#include "llvmBuilder.hpp"
#include <iostream>
#include <vector>

using namespace std;

#define CONST(num) \
  llvm::ConstantInt::get(context, llvm::APInt(64, num))


// 存储临时变量
llvm::Value *tmp_val = nullptr;
// 是否需要左值
bool require_address = false;
// 正在被创建的函数
llvm::Function *cur_fun = nullptr;
// 检测scope
bool pre_enter_scope = false;
vector<llvm::Value*> array_init;
vector<llvm::BasicBlock*> iter_expr,iter_cont;


// 转换为ConstArray
llvm::Constant* ToConstArray(vector<int64_t> &array_bounds,vector<llvm::Value*> &array_init, llvm::Type* TyInt64){
  auto cur_bnd = array_bounds[0];
  vector<int64_t> bounds;
  bounds.assign(array_bounds.begin()+1 , array_bounds.end());
  vector<llvm::Constant*> init_list;
  
  int d_length = array_init.size()/cur_bnd;
  if (d_length == 1)
  {
    for (int i = 0; i < cur_bnd; i++)
    {
      init_list.push_back(static_cast<llvm::Constant*>(array_init[i]));
    }
  }
  else
  {
    for (int i = 0; i < cur_bnd; i++)
    {
      vector<llvm::Value*> init;
      init.assign(array_init.begin()+d_length*i,array_init.begin()+d_length*(i+1));
      auto const_array = ToConstArray(bounds, init, TyInt64);
      init_list.push_back(const_array);
    }
  }
  llvm::Type* TyArray = TyInt64;
  for (int i = (array_bounds.size()-1); i>=0; i--){
    TyArray=llvm::ArrayType::get(TyArray,static_cast<uint64_t>(array_bounds[i]));
  }
  llvm::ArrayRef<llvm::Constant*> init_val (init_list);
  return llvm::ConstantArray::get(static_cast<llvm::ArrayType*>(TyArray),init_val);//
}

// 显示报错
void LLVMIRBuilderError(string str) {
  cout << "Error in IRBuilder. " << str << endl;
  abort();
}

// 编译单元 TopLevel （CompUnit）

void LLVMBuilder::visit(TreeNodeTopLevel &node) {
    for (auto DeclDef : node.DeclDefList) {
      DeclDef->accept(*this);
    }
}

// 常量声明 ConstDecl

void LLVMBuilder::visit(TreeNodeConstDecl &node) {
  for (auto p : node.ConstDefList) {
    p->accept(*this);
  }
}

// 常量定义 ConstDef
// 操作节点
void LLVMBuilder::visit(TreeNodeConstDef &node) {
    auto *TyInt64 = llvm::Type::getInt64Ty(context);

    // Non-array constant
    if (node.ArrayConstExpList.empty()) {
        if (node.ConstInitVal != nullptr) {
            // Visit the ConstInitVal node
            node.ConstInitVal->accept(*this);
            // Store the computed value in the symbol table
            scope.push(node.id, tmp_val);
        } else {
            LLVMIRBuilderError("not a constant");
        }
    }
        // Array constant
    else {
        llvm::Type* TyArray = TyInt64;
        std::vector<int64_t> array_bounds;

        // Get array bounds
        for (int i = 0; i < node.ArrayConstExpList.size(); i++) {
            auto array_const_exp = node.ArrayConstExpList[i];
            // Visit the ArrayConstExp node to compute the dimension value
            array_const_exp->accept(*this);
            // Extract the dimension value from the computed constant expression
            auto dim_value = static_cast<llvm::ConstantInt*>(tmp_val)->getValue().getZExtValue();
            // Store the dimension value
            array_bounds.push_back(dim_value);
        }

        // Create LLVM ArrayType based on the array bounds
        for (int i = array_bounds.size() - 1; i >= 0; i--) {
            TyArray = llvm::ArrayType::get(TyArray, static_cast<uint64_t>(array_bounds[i]));
        }

        // Add to global variable
        if (scope.in_global()) {
            if (node.ConstInitVal != nullptr) {
                // Set the bounds of ConstInitVal to the array bounds
                node.ConstInitVal->bounds.assign(array_bounds.begin(), array_bounds.end());
                // Visit the ConstInitVal node to generate the array initialization values
                node.ConstInitVal->accept(*this);
                // Convert the array initialization values to an LLVM constant array
                auto initializer = ToConstArray(array_bounds, array_init, TyInt64);
                // Create a global variable with external linkage and initialize it with the constant array
                auto var = new llvm::GlobalVariable(
                        *module,
                        TyArray,
                        false,
                        llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                        initializer
                );
                // Store the global variable in the symbol table
                scope.push(node.id, var);
            } else {
                // If no initializer is provided, initialize the global variable with zeros
                auto initializer = llvm::ConstantAggregateZero::get(TyArray);
                auto var = new llvm::GlobalVariable(
                        *module,
                        TyArray,
                        false,
                        llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                        initializer
                );
                // Store the global variable in the symbol table
                scope.push(node.id, var);
            }
        }
            // Add to local variable
        else {
            // Allocate stack memory for the local variable
            auto array_alloc = builder.CreateAlloca(TyArray);
            // Store the array allocation in the symbol table
            scope.push(node.id, array_alloc);
            if (node.ConstInitVal != nullptr) {
                auto alloca = scope.find(node.id);
                // Set the bounds of ConstInitVal to the array bounds
                node.ConstInitVal->bounds.assign(array_bounds.begin(), array_bounds.end());
                // Visit the ConstInitVal node to generate the array initialization values
                node.ConstInitVal->accept(*this);

                // Generate GEP indices for storing the array initialization values
                auto Ptr = builder.CreateGEP(alloca, {CONST(0), CONST(0)});
                for (int i = 1; i < node.ConstInitVal->bounds.size(); i++) {
                    Ptr = builder.CreateGEP(Ptr, {CONST(0), CONST(0)});
                }

                // Store the array initialization values in the allocated memory
                for (int i = 0; i < array_init.size(); i++) {
                    builder.CreateStore(array_init[i], Ptr);
                    Ptr = builder.CreateGEP(Ptr, CONST(1));
                }
            }
        }
    }
}

// 常量初值
// 
void LLVMBuilder::visit(TreeNodeConstInitVal& node) {
    auto& bounds = node.bounds;
    auto* TyInt64 = llvm::Type::getInt64Ty(context);

    // If ConstExp exists and there are no bounds, visit ConstExp
    if (node.ConstExp != nullptr && bounds.empty()) {
        node.ConstExp->accept(*this);
        // tmp_val is the return value
    } else {
        auto cur_bnd = bounds[0];

        int d_length = 1;
        for (int i = 1; i < bounds.size(); i++) {
            d_length *= bounds[i];
        }

        std::vector<llvm::Value*> init_list;

        // Iterate over ConstInitValList
        for (auto& init_val : node.ConstInitValList) {
            if (init_val->ConstExp != nullptr) {
                init_val->ConstExp->accept(*this);
                init_list.push_back(tmp_val);
            } else {
                auto pos = init_list.size();
                auto remaining = (d_length - (pos % d_length)) % d_length;

                // Fill with zeros to align with d_length
                for (int j = 0; j < remaining; j++) {
                    init_list.push_back(CONST(0));
                }

                // Update bounds and visit the initialized value
                init_val->bounds.assign(bounds.begin() + 1, bounds.end());
                init_val->accept(*this);
                init_list.insert(init_list.end(), array_init.begin(), array_init.end());
            }
        }

        int total_length = d_length * cur_bnd;

        // Fill remaining positions with zeros
        for (int i = init_list.size(); i < total_length; i++) {
            init_list.push_back(CONST(0));
        }

        array_init.assign(init_list.begin(), init_list.end());
    }
    //("ConstInitVal_end");
}
void LLVMBuilder::visit(TreeNodeConstExp &node) {
    // Visit the AddExp node to compute the constant expression value
    node.AddExp->accept(*this);
}


void LLVMBuilder::visit(TreeNodeVarDecl &node) {
  for (auto p : node.VarDefList) {
    p->accept(*this);
  }
}

void LLVMBuilder::visit(TreeNodeVarDef &node) {
    auto *TyInt64 = llvm::Type::getInt64Ty(context);

    if (node.ArrayConstExpList.empty()) {
        if (scope.in_global()) {
            if (node.InitVal != nullptr) {
                // Visit the InitVal node to compute the initial value
                node.InitVal->accept(*this);
                auto initializer = static_cast<llvm::Constant*>(tmp_val);
                // Create a global variable with external linkage and initialize it with the initializer
                auto var = new llvm::GlobalVariable(
                        *module,
                        TyInt64,
                        false,
                        llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                        initializer
                );
                // Store the global variable in the symbol table
                scope.push(node.id, var);
            } else {
                // If no initializer is provided, initialize the global variable with zero
                auto initializer = llvm::ConstantAggregateZero::get(TyInt64);
                auto var = new llvm::GlobalVariable(
                        *module,
                        TyInt64,
                        false,
                        llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                        initializer
                );
                // Store the global variable in the symbol table
                scope.push(node.id, var);
            }
        } else {
            // Allocate stack memory for the local variable
            auto val_alloc = builder.CreateAlloca(TyInt64);
            // Store the variable allocation in the symbol table
            scope.push(node.id, val_alloc);
            if (node.InitVal != nullptr) {
                // Visit the InitVal node to compute the initial value
                node.InitVal->accept(*this);
                // Store the computed initial value in the allocated memory
                builder.CreateStore(tmp_val, val_alloc);
            }
        }
    } else {
        llvm::Type* TyArray = TyInt64;
        std::vector<int64_t> array_bounds;

        // Get array bounds
        for (auto array_const_exp : node.ArrayConstExpList) {
            array_const_exp->accept(*this);
            // Extract the dimension value from the computed constant expression
            auto dim_value = static_cast<llvm::ConstantInt*>(tmp_val)->getValue().getZExtValue();
            // Store the dimension value
            array_bounds.push_back(dim_value);
        }

        // Create LLVM ArrayType based on the array bounds
        for (int i = array_bounds.size() - 1; i >= 0; i--) {
            TyArray = llvm::ArrayType::get(TyArray, static_cast<uint64_t>(array_bounds[i]));
        }

        if (scope.in_global()) {
            if (node.InitVal != nullptr) {
                // Set the bounds of the InitVal to the array bounds
                node.InitVal->bounds.assign(array_bounds.begin(), array_bounds.end());
                // Visit the InitVal node to compute the initial values
                node.InitVal->accept(*this);
                // Convert the initial values to an LLVM constant array
                auto initializer = ToConstArray(array_bounds, array_init, TyInt64);
                // Create a global variable with external linkage and initialize it with the constant array
                auto var = new llvm::GlobalVariable(
                        *module,
                        TyArray,
                        false,
                        llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                        initializer
                );
                // Store the global variable in the symbol table
                scope.push(node.id, var);
            } else {
                // If no initializer is provided, initialize the global array variable with zeros
                auto initializer = llvm::ConstantAggregateZero::get(TyArray);
                auto var = new llvm::GlobalVariable(
                        *module,
                        TyArray,
                        false,
                        llvm::GlobalVariable::LinkageTypes::ExternalLinkage,
                        initializer
                );
                // Store the global variable in the symbol table
                scope.push(node.id, var);
            }
        } else {
            // Allocate stack memory for the local array variable
            auto array_alloc = builder.CreateAlloca(TyArray);
            // Store the array allocation in the symbol table
            scope.push(node.id, array_alloc);
            if (node.InitVal != nullptr) {
                auto alloca = scope.find(node.id);
                // Set the bounds of the InitVal to the array bounds
                node.InitVal->bounds.assign(array_bounds.begin(), array_bounds.end());
                // Visit the InitVal node to compute the initial values
                node.InitVal->accept(*this);

                // Generate GEP indices for storing the initial values
                auto Ptr = builder.CreateGEP(alloca, {CONST(0), CONST(0)});
                for (int i = 1; i < node.InitVal->bounds.size(); i++) {
                    Ptr = builder.CreateGEP(Ptr, {CONST(0), CONST(0)});
                }

                // Store the initial values in the allocated memory
                for (auto init_val : array_init) {
                    builder.CreateStore(init_val, Ptr);
                    Ptr = builder.CreateGEP(Ptr, CONST(1));
                }
            }
        }
    }
}

void LLVMBuilder::visit(TreeNodeInitVal &node) {

    // Prepare the Int64 type
    auto *TyInt64 = llvm::Type::getInt64Ty(context);

    if (node.Exp != nullptr && node.bounds.empty()) {
        // If there is an Exp and no bounds, visit the Exp node to compute the value
        node.Exp->accept(*this);
        // The computed value is stored in tmp_val
    } else {
        auto cur_bnd = node.bounds[0];

        // Compute the length of the flattened dimension
        auto d_length = 1;
        for (int i = 1; i < node.bounds.size(); i++) {
            d_length *= node.bounds[i];
        }

        vector<llvm::Value*> init_list;
        for (auto init_val : node.InitValList) {
            if (init_val->Exp != nullptr) {
                // If there is an Exp, visit the Exp node to compute the value
                init_val->Exp->accept(*this);
                init_list.push_back(tmp_val);
            } else {
                auto pos = init_list.size();
                // Add padding zeros to align with the flattened dimension
                for (int j = 0; j < (d_length - (pos % d_length)) % d_length; j++) {
                    init_list.push_back(CONST(0));
                }
                // Assign the remaining bounds to the nested InitVal node
                init_val->bounds.assign(node.bounds.begin() + 1, node.bounds.end());
                // Visit the nested InitVal node
                init_val->accept(*this);
                // Append the computed values to the init_list
                init_list.insert(init_list.end(), array_init.begin(), array_init.end());
            }
        }
        // Add padding zeros to reach the expected length based on the current bound
        for (int i = init_list.size(); i < d_length * cur_bnd; i++) {
            init_list.push_back(CONST(0));
        }
        // Assign the computed values to the array_init
        array_init.assign(init_list.begin(), init_list.end());
    }

}


void LLVMBuilder::visit(TreeNodeFuncDef &node) {

    // Prepare the required LLVM types
    auto *TyInt64 = llvm::Type::getInt64Ty(context);
    auto *TyVoid = llvm::Type::getVoidTy(context);
    auto *TyInt64Ptr = llvm::Type::getInt64PtrTy(context);

    // Determine the return type of the function
    llvm::Type *ret_type;
    if (node.type == TYPE_INT) {
        ret_type = TyInt64;
    } else {
        ret_type = TyVoid;
    }

    // Determine the parameter types of the function
    std::vector<llvm::Type *> param_types;
    for (auto& param : node.FuncFParamList) {
        llvm::Type *param_type;
        if (param->isarray) {
            param_type = TyInt64Ptr;
        } else {
            param_type = TyInt64;
        }
        param_types.push_back(param_type);
    }

    // Create the function type
    llvm::FunctionType *fun_type = llvm::FunctionType::get(ret_type, param_types, false);

    // Create the function
    auto fun = llvm::Function::Create(
            fun_type,
            llvm::GlobalValue::LinkageTypes::ExternalLinkage,
            node.id,
            module.get()
    );

    // Store the function in the symbol table
    scope.push(node.id, fun);

    // Set the current function to the newly created function
    cur_fun = fun;

    // Create the entry basic block and set the insertion point
    auto funBB = llvm::BasicBlock::Create(context, "entry", fun);
    builder.SetInsertPoint(funBB);

    // Enter the function scope
    scope.enter();
    pre_enter_scope = true;

    // Process function arguments
    std::vector<llvm::Value*> args;
    for (auto arg = fun->arg_begin(); arg != fun->arg_end(); arg++) {
        args.push_back(arg);
    }

    for (auto& param : node.FuncFParamList) {
        if (param->isarray) {
            // Allocate stack memory for array parameters
            auto array_alloc = builder.CreateAlloca(TyInt64Ptr);
            builder.CreateStore(args.front(), array_alloc);
            args.erase(args.begin());

            // Store array parameters in the symbol table with their respective arguments
            std::vector<llvm::Value *> array_params{array_alloc};
            scope.push(param->id, array_alloc);
            scope.push_params(param->id, array_alloc, array_params);
        } else {
            // Allocate stack memory for non-array parameters
            auto alloc = builder.CreateAlloca(TyInt64);
            builder.CreateStore(args.front(), alloc);
            args.erase(args.begin());

            // Store non-array parameters in the symbol table
            scope.push(param->id, alloc);
        }
    }


    // Process the function block
    node.Block->accept(*this);

    // Create a return statement if necessary
    if (builder.GetInsertBlock()->getTerminator() == nullptr) {
        if (cur_fun->getReturnType() == TyVoid) {
            builder.CreateRetVoid();
        } else if (builder.GetInsertBlock()->empty()) {
            builder.GetInsertBlock()->eraseFromParent();
        }
    }

    // Exit the function scope
    scope.exit();
}


void LLVMBuilder::visit(TreeNodeFuncFParam &node) {return;}

void LLVMBuilder::visit(TreeNodeBlock &node) {
    // Determine if entering the scope is needed
  bool need_exit_scope = !pre_enter_scope;
  if (pre_enter_scope) {
    pre_enter_scope = false;
  } else {
    scope.enter();
  }

    // Process each block item in the block
    for (auto& blockitem : node.BlockItemList) {
        blockitem->accept(*this);

    }

    if (need_exit_scope) {
        // Exit the scope if it was entered in this function
        scope.exit();
    }
}

void LLVMBuilder::visit(TreeNodeBreakStmt &node) {

    // Retrieve the current loop or switch iterator
    auto cur_iter = iter_cont.back();

    // Create a branch instruction to exit the loop
    builder.CreateBr(cur_iter);

}

void LLVMBuilder::visit(TreeNodeContinueStmt &node) {

    // Retrieve the current loop or switch iterator
    auto cur_iter = iter_expr.back();

    // Create a branch instruction to continue the loop or switch
    builder.CreateBr(cur_iter);

}

void LLVMBuilder::visit(TreeNodeAssignStmt &node) {
    // Process the left-hand side (LVal)
    node.LVal->accept(*this);
    auto lval = tmp_val;

    // Process the right-hand side (Exp)
    node.Exp->accept(*this);
    auto rval = tmp_val;

    // Create a store instruction to assign the value
    builder.CreateStore(rval, lval);
}

void LLVMBuilder::visit(TreeNodeIfStmt &node) {

    // Process the condition expression
    node.Cond->accept(*this);
    auto cond_val = tmp_val;

    // Create basic blocks for true branch, false branch, and continuation
    auto trueBB = llvm::BasicBlock::Create(context, "condition_true", cur_fun);
    auto falseBB = llvm::BasicBlock::Create(context, "false", cur_fun);
    auto contBB = llvm::BasicBlock::Create(context, "condition_cont", cur_fun);

    // Create conditional branch instructions based on the presence of an else statement
    if (node.elseStmt == nullptr) {
        builder.CreateCondBr(cond_val, trueBB, contBB);
    } else {
        builder.CreateCondBr(cond_val, trueBB, falseBB);
    }

    // Process the true branch
    builder.SetInsertPoint(trueBB);
    node.ifStmt->accept(*this);
    if (builder.GetInsertBlock()->getTerminator() == nullptr) {
        builder.CreateBr(contBB);
    }

    if (node.elseStmt == nullptr) {
        falseBB->eraseFromParent();
    } else {
        // Process the false branch
        builder.SetInsertPoint(falseBB);
        node.elseStmt->accept(*this);
        if (builder.GetInsertBlock()->getTerminator() == nullptr) {
            builder.CreateBr(contBB);
        }
    }
    // Set the insertion point to the continuation block
    builder.SetInsertPoint(contBB);

}
void LLVMBuilder::visit(TreeNodeWhileStmt &node) {

    // Create the basic blocks for expression evaluation, true branch, and continuation
    auto exprBB = llvm::BasicBlock::Create(context, "loop_expression", cur_fun);
    auto trueBB = llvm::BasicBlock::Create(context, "loop_true", cur_fun);
    auto contBB = llvm::BasicBlock::Create(context, "loop_cont", cur_fun);

    // Create a branch instruction to the expression evaluation basic block
    if (builder.GetInsertBlock()->getTerminator() == nullptr) {
        builder.CreateBr(exprBB);
    }

    // Set the insertion point to the expression evaluation basic block
    builder.SetInsertPoint(exprBB);

    // Add the expression basic block to the iteration stack
    iter_expr.push_back(exprBB);

    // Add the control basic block to the iteration stack
    iter_cont.push_back(contBB);

    // Process the condition expression
    node.Cond->accept(*this);
    auto cond_val = tmp_val;

    // Create a conditional branch instruction to the true branch or continuation
    builder.CreateCondBr(cond_val, trueBB, contBB);

    // Set the insertion point to the true branch
    builder.SetInsertPoint(trueBB);

    // Process the statement in the true branch
    node.Stmt->accept(*this);

    if (builder.GetInsertBlock()->getTerminator() == nullptr) {
        // Create a branch instruction to loop back to the expression evaluation
        builder.CreateBr(exprBB);
    }
    // Remove the expression basic block from the iteration stack
    iter_expr.pop_back();
    // Remove the continuation basic block from the iteration stack
    iter_cont.pop_back();
    // Set the insertion point to the control basic block
    builder.SetInsertPoint(contBB);

}
void LLVMBuilder::visit(TreeNodeReturnStmt &node) {
    if (node.Exp == nullptr) {
        // Create a return void instruction
        builder.CreateRetVoid();
    } else {
        // Process the expression
        node.Exp->accept(*this);
        auto ret_val = tmp_val;
        // Create a return instruction with the expression value
        builder.CreateRet(ret_val);
    }
}

//todo
void LLVMBuilder::visit(TreeNodeLVal &node) {

    // Find the variable in the scope
    auto var = scope.find(node.id);

    // Check whether the var has been defined before
    if (var == nullptr){
        cout<<"not def var: "<<node.id<<endl;
        abort();
    }

    // Check if the variable is a const
    if (var->getType()->isIntegerTy()) {
        tmp_val = var;
        return;
    }

    auto ptr_type = var->getType()->getPointerElementType();
    auto is_int = ptr_type->isIntegerTy();
    auto is_ptr = ptr_type->isPointerTy();

    if (node.ArrayExpList.empty()) {
        if (is_int) {
            // Integer variable
            tmp_val = scope.find(node.id);
            return;
        } else if (is_ptr) {
            // Pointer variable
            tmp_val = builder.CreateLoad(var);
            return;
        } else {
            // Array variable
            tmp_val = builder.CreateGEP(var, {CONST(0), CONST(0)});
            return;
        }
    }
        // Handle array case
    else {
        llvm::Value *tmp_ptr;

        if (is_int) {
            // Integer array
            tmp_ptr = var;
            llvm::Value *sum_val = nullptr;
            for (auto exp : node.ArrayExpList) {
                // Calculate index of the array
                exp->accept(*this);
                sum_val = builder.CreateAdd(sum_val, tmp_val);
            }
            tmp_ptr = builder.CreateGEP(tmp_ptr, sum_val);
        } else if (is_ptr) {
            // Pointer array
            vector<llvm::Value *> array_params;
            scope.find_params(node.id, array_params);
            auto array_load = builder.CreateLoad(var);
            llvm::Value * temp;
            for (int i = 0; i < node.ArrayExpList.size(); i++) {
                node.ArrayExpList[i]->accept(*this);
                auto val = tmp_val;
                for (int j = i + 1; j < array_params.size(); j++) {
                    // Calculate index of high dimension array
                    val = builder.CreateMul(val, array_params[j]);
                }
                temp = val;
            }
            tmp_ptr = builder.CreateGEP(array_load, temp);
        } else {
            // Array of arrays
            tmp_ptr = var;
            for (auto exp : node.ArrayExpList) {
                exp->accept(*this);
            }
            tmp_ptr = builder.CreateGEP(tmp_ptr, {CONST(0), tmp_val});
        }
        tmp_val = tmp_ptr;
    }
}

void LLVMBuilder::visit(TreeNodePrimaryExp &node) {
  if (node.Exp) { 
    node.Exp->accept(*this);
  } else if (node.LVal) {
    node.LVal->accept(*this);
    if (require_address) {
      while (!tmp_val->getType()->getPointerElementType()->isIntegerTy()){
        tmp_val = builder.CreateGEP(tmp_val,{CONST(0), CONST(0)});
      }
    }
    else
    {
      if ( tmp_val->getType()->isIntegerTy())
      {
        return;
      }
      tmp_val=builder.CreateLoad(tmp_val);
    }
  } else if (node.Number) {
    node.Number->accept(*this);
  }
  return;
}

void LLVMBuilder::visit(TreeNodeNumber &node) {
  tmp_val = CONST(node.num);
}

void LLVMBuilder::visit(TreeNodeUnaryExp &node) {
  auto *TyInt64 = llvm::Type::getInt64Ty(context);

  llvm::Value *val;
  if (node.PrimaryExp) {
    node.PrimaryExp->accept(*this);
    val=tmp_val;
  } else if (node.UnaryExp) {
    node.UnaryExp->accept(*this);
    val=tmp_val;
  } else {
    node.Callee->accept(*this);
    val=tmp_val;
  }
  switch (node.op) {
    case SYSY_NEG:
      val = builder.CreateSub(CONST(0), val);
      break;
    case SYSY_NOT:
      val = builder.CreateICmpEQ(val, CONST(0));
      val = builder.CreateZExt(val, TyInt64);
      break;
  }
  tmp_val = val;

}

void LLVMBuilder::visit(TreeNodeCallee &node) {
  //("Callee");
  
  auto fun = scope.find(node.id);
  vector<llvm::Value *> args;
  for (int i=0; i < node.ExpList.size(); i++) {
    //("Callee_1")
    auto arg = node.ExpList[i];
    // cout<<fun->getType()->getPointerElementType()->getTypeID()<<endl;

    auto arg_type = fun->getType()->getPointerElementType()->getFunctionParamType(i);
    //("Callee_1.1")
    if (arg_type->isIntegerTy()){
      require_address = false ;
    } else {
      require_address = true ;
    }
    //("Callee_2")
    arg->accept(*this);  // 调用Exp
    require_address = false ;
    args.push_back(tmp_val);
  }
  //("Callee_3")

  tmp_val = builder.CreateCall(fun, args);
  //("Callee_end")
}

void LLVMBuilder::visit(TreeNodeMulExp &node) {
  //("MulExp");

  auto *TyInt64 = llvm::Type::getInt64Ty(context);
  if (node.MulExp == nullptr) {
    node.UnaryExp->accept(*this);
  } else {

    node.MulExp->accept(*this);
    auto l_val = tmp_val;
    node.UnaryExp->accept(*this);
    auto r_val = tmp_val;
    switch (node.op) {
      case SYSY_MUL:
        tmp_val = builder.CreateMul(l_val, r_val);
        break;
      case SYSY_DIV:
        tmp_val = builder.CreateSDiv(l_val, r_val);
        break;
      case SYSY_MOD:
        tmp_val = builder.CreateSRem(l_val, r_val);
        break;
    }
  }
  //("MulExp_end");
}

void LLVMBuilder::visit(TreeNodeAddExp &node) {  
  //("AddExp");
  auto *TyInt64 = llvm::Type::getInt64Ty(context);
  if (node.AddExp == nullptr) {
    node.MulExp->accept(*this);
  } else {

    node.AddExp->accept(*this);
    auto l_val = tmp_val;
    node.MulExp->accept(*this);
    auto r_val = tmp_val;
    switch (node.op) {
      case SYSY_PLUS:
        tmp_val = builder.CreateAdd(l_val, r_val);
        break;
      case SYSY_MINUS:
        tmp_val = builder.CreateSub(l_val, r_val);
        break;
    }
  }
  //("AddExp_end");
}

void LLVMBuilder::visit(TreeNodeRelExp &node) {
  //("RelExp");

  auto *TyInt64 = llvm::Type::getInt64Ty(context);
  llvm::Value *logicalVal;
  if (node.RelExp == nullptr) {
    node.AddExp->accept(*this);
  } else {
    node.RelExp->accept(*this);
    auto lval = tmp_val;
    node.AddExp->accept(*this);
    auto rval = tmp_val;
    switch (node.op) {
      case SYSY_LTE:
        logicalVal = builder.CreateICmpSLE(lval, rval);
        break;
      case SYSY_LT:
        logicalVal = builder.CreateICmpSLT(lval, rval);
        break;
      case SYSY_GT:
        logicalVal = builder.CreateICmpSGT(lval, rval);
        break;
      case SYSY_GTE:
        logicalVal = builder.CreateICmpSGE(lval, rval);
        break;
    }
    tmp_val = builder.CreateZExt(logicalVal, TyInt64);
  }
  //("RelExp_end");
}

void LLVMBuilder::visit(TreeNodeEqExp &node) {
  //("EqExp");
  auto *TYInt64 = llvm::Type::getInt64Ty(context);
  if (node.EqExp == nullptr) {
    node.RelExp->accept(*this);
  } else {
    node.EqExp->accept(*this);
    auto lval = tmp_val;
    node.RelExp->accept(*this);
    auto rval = tmp_val;
    switch (node.op) {
      case SYSY_EQ:
        tmp_val = builder.CreateICmpEQ(lval, rval);
        break;
      case SYSY_NEQ:
        tmp_val = builder.CreateICmpNE(lval, rval);
        break;
    }
    tmp_val = builder.CreateZExt(tmp_val, TYInt64);
  }
  //("EqExp_end");
}

void LLVMBuilder::visit(TreeNodeLAndExp &node) {
  //("LAndExp");
  if (node.LAndExp == nullptr) {
    node.EqExp->accept(*this);
    // tmp_val = builder.CreateZExt(tmp_val, TYInt64);
    tmp_val = builder.CreateICmpNE(tmp_val, CONST(0));
  } else {
    node.LAndExp->accept(*this);
      if (llvm::ICmpInst *icmpInst = dyn_cast<llvm::ICmpInst>(tmp_val)) {
          bool comparisonResult = icmpInst->isTrueWhenEqual();
          if(comparisonResult){
              cout<<"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";
              return;
          }
      }
    auto lval = tmp_val;
    //std::cout<<<<endl;
    node.EqExp->accept(*this);
    auto rval = builder.CreateICmpNE(tmp_val, CONST(0));
    // auto rval = builder.CreateICmpNE(tmp_val, CONST(0));
    tmp_val = builder.CreateAnd(lval, rval);

  }
  //("LAndExp_end");
}//return int1;

void LLVMBuilder::visit(TreeNodeLOrExp &node) {
  //("LOrExp");
  if (node.LOrExp == nullptr) {
    node.LAndExp->accept(*this);
  } else {
    node.LOrExp->accept(*this);
    auto lval = tmp_val;
      /*if (llvm::ICmpInst *icmpInst = dyn_cast<llvm::ICmpInst>(tmp_val)) {
          bool comparisonResult = icmpInst->isTrueWhenEqual();
          if(!comparisonResult){
              cout<<"++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++";
              return;
          }
      }*/
    node.LAndExp->accept(*this);
    auto rval = tmp_val;
    tmp_val = builder.CreateOr(lval, rval);
  }
  //("LOrExp_end");
}