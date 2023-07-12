#include <iostream>
#include <llvm/IR/Dominators.h>
#include "llvmBuilder.hpp"
#include "fdriver.hh"
#include "ast.hh"


#include "llvm/ADT/Triple.h"
#include "llvm/Analysis/TargetLibraryInfo.h"
#include "llvm/CodeGen/CommandFlags.inc"
#include "llvm/CodeGen/LinkAllCodegenComponents.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/IR/AutoUpgrade.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/Pass.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FileSystem.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Support/TargetSelect.h"
#include "llvm/Support/ToolOutputFile.h"
#include "llvm/Target/TargetMachine.h"

#include "llvm/Transforms/Scalar.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/Utils/PromoteMemToReg.h"
#include "llvm/Transforms/Utils/SSAUpdater.h"
#include "llvm/Transforms/Scalar/GVN.h"

#include "llvm/Pass.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/PassManager.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/InitLLVM.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/IRPrintingPasses.h"

using namespace std;
using namespace std::literals::string_literals;



int main(int argc, char **argv) {
    string input_path = argv[1];
    std::cout<<input_path<<std::endl;
    string target_path = input_path.substr(0, input_path.size() - 3);
    bool showAst = false;
    bool showSSA = false;
    bool showLLVM = true;
    bool showAsm = false;
    bool showFinal = true;

    TreeNodeTopLevel *root;

    // start parsing process, get the root of AST
    fdriver driver;
    root = driver.parse(input_path);
    //root = runParser(input_path);
    auto tree = astRoot(root);
    
    if(showAst) {
        TreeNodePrinter pr;
        pr.visit(*root);
    }

    LLVMBuilder builder;

    tree.run_visitor(builder);
    auto mod = builder.build();
    mod->setSourceFileName(input_path);

    error_code error_msg;

    //todo support other target structure

    LLVMInitializeRISCVTarget();
    LLVMInitializeRISCVTargetInfo();
    LLVMInitializeRISCVTargetMC();
    LLVMInitializeRISCVAsmParser();
    LLVMInitializeRISCVAsmPrinter();


    llvm::Triple TheTriple;
    //TheTriple.setTriple(llvm::sys::getDefaultTargetTriple());
    TheTriple.setArch(llvm::Triple::riscv64);
    TheTriple.setObjectFormat(llvm::Triple::ObjectFormatType::ELF);
    TheTriple.setEnvironment(llvm::Triple::EnvironmentType::Simulator);
    //TheTriple.setOS(llvm::Triple::OSType::UnknownOS);
    //TheTriple.setVendor(llvm::Triple::VendorType::UnknownVendor);

    string Error;
    const llvm::Target *TheTarget = llvm::TargetRegistry::lookupTarget("", TheTriple, Error);

    string CPUStr = "";
    llvm::StringRef FeaturesStr;

    llvm::CodeGenOpt::Level OLvl = llvm::CodeGenOpt::None;
    llvm::TargetOptions Options = llvm::TargetOptions();

    unique_ptr<llvm::TargetMachine> Target(TheTarget->createTargetMachine(
            TheTriple.getTriple(), CPUStr, FeaturesStr, Options, llvm::None, llvm::None, OLvl)
        );
    assert(Target);



    llvm::legacy::PassManager PM;
    llvm::TargetLibraryInfoImpl TLII(llvm::Triple(mod->getTargetTriple()));
    PM.add(new llvm::TargetLibraryInfoWrapperPass(TLII));
    mod->setDataLayout(Target->createDataLayout());
    UpgradeDebugInfo(*mod);
    setFunctionAttributes(CPUStr, FeaturesStr, *mod);

    llvm::LLVMTargetMachine &LLVMTM = static_cast<llvm::LLVMTargetMachine&>(*Target);
    llvm::MachineModuleInfoWrapperPass *MMI = new llvm::MachineModuleInfoWrapperPass(&LLVMTM);
    llvm::TargetPassConfig &TPC = *LLVMTM.createPassConfig(PM);

    TPC.setDisableVerify(true);
    PM.add(&TPC);
    PM.add(MMI);

    //控制流优化
    //PM.add(llvm::createDeadCodeEliminationPass());
    //PM.add(llvm::createCFGSimplificationPass());

    //数据流分析
    //PM.add(llvm::createLoopSimplifyCFGPass());
    //循环展开优化
    //PM.add(llvm::createLoopUnrollPass());

    //活跃变量分析
    //todo






    //常量传播
    //PM.add(llvm::createConstantPropagationPass());

    //常数合并
    /*for (auto &f : mod->getFunctionList()){
        for(auto &BB : f){
            for(auto &instr:BB){
                for (llvm::Use& operand : instr.operands()) {
                    llvm::Value* value = operand.get();
                    if(llvm::Constant * constant = llvm::dyn_cast<llvm::Constant>(value)){

                    }
                    // 进行常数合并
                    //llvm::Value* foldedValue = constantFolding(value);
                    // 更新操作数
                    //operand.set(foldedValue);
                }
            }
        }
    }*/
    //全局值编号


    //代数化简与强度消减
    //todo

    //常量合并（折叠）

    for (auto &f:mod->getFunctionList()){
        for(auto &BB:f){
            for(auto &I:BB){
                if (BinaryOperator* BinOp = dyn_cast<BinaryOperator>(&I)) {
                    if (ConstantInt* LHS = dyn_cast<ConstantInt>(BinOp->getOperand(0))) {
                        if (ConstantInt* RHS = dyn_cast<ConstantInt>(BinOp->getOperand(1))) {
                            Constant *Result = ConstantExpr::get(BinOp->getOpcode(), LHS, RHS);
                            BinOp->replaceAllUsesWith(Result);

                        }
                    }
                }
            }
        }
    }

    //复写传播
    for (auto &f : mod->getFunctionList()){
        for(auto &BB:f){
            DenseMap<Value*, Value*> assignmentMap;
            for (auto I = BB.begin(); I != BB.end();) {
                if (StoreInst* Store = dyn_cast<StoreInst>(&*I)) {
                    Value* LHS = Store->getPointerOperand();
                    Value* RHS = Store->getValueOperand();
                    errs() << "Left Value: " << *LHS<< "\n";
                    errs() << "Right Value: " << *RHS << "\n";
                    assignmentMap[LHS] = RHS;
                    ++I;
                } else if (LoadInst* Load = dyn_cast<LoadInst>(&*I)) {
                    Value* Ptr = Load->getPointerOperand();
                    errs() << "Load Value: " << *Ptr<< "\n";
                    if (assignmentMap.count(Ptr) > 0 ) {
                        errs()<<"found"<<"\n";
                        Value* AssignedValue = assignmentMap[Ptr];
                        Load->replaceAllUsesWith(AssignedValue);
                        I = Load->eraseFromParent();
                    } else {
                        ++I;
                    }
                } else {
                    ++I;
                }
            }

        }
    }
/*
    for (auto &f : mod->getFunctionList()){
        std::map<Value*, Value*> valueMap;
        for (auto &BB :f){
            for(Instruction& I : BB){
                auto op = I.getOpcode();
                std::string expression;
                expression+=llvm::Instruction::getOpcodeName(op);
                if(expression != "store"){
                    continue;
                }else{
                    auto lhs = getLoadStorePointerOperand(&I);
                    auto rhs = I.getOperandList()->operator Value *();


                    // 打印左值和右值
                    //errs() << "Left Value: " << *lhs<< "\n";
                    //errs() << "Right Value: " << *rhs << "\n";

                    valueMap[lhs] = rhs;
                };
            }
            for(Instruction& I : BB){
                auto op = I.getOpcode();
                std::string expression;
                expression+=llvm::Instruction::getOpcodeName(op);
                if(expression != "store"){
                    continue;
                }else{
                    int cnt = 0;
                    for(auto i = valueMap.begin();i!=valueMap.end();i++){
                        cnt++;
                        if(i->first==I.getOperandList()->operator Value *()){
                            cout<<"niubi"<<endl;
                        }else{
                            errs()<<I.getOperandList()->operator Value *()<<" "<<i->first<<"\n";

                        }
                        if(cnt == 2){
                            break;
                        }
                    }

                };
            }
        }
    }
*/
    //活跃bib
    //局部公共子表达式删除(LCSE)
    /*
    std::unordered_map<std::string, llvm::Value*> expressionMap;

    for(auto &f : mod->getFunctionList()){

        for (llvm::BasicBlock& basicBlock : f) {
            llvm::legacy::FunctionPassManager passManager(mod.get());
            //passManager.add()
            //passManager.add(llvm::createGVNPass());
            //passManager.run(f);
            // todo 手写
            /*for (auto& I : basicBlock) {
                errs() << I << "\n";
            }*/
            /*
            for (llvm::Instruction& instruction : basicBlock) {
                std::string expression = getExpressionAsString(&instruction);
                if(expression == "Wrong") continue;
                std::cout<<expression<<endl;
                if (expressionMap.count(expression) > 0) {
                    cout<<"erase"<<endl;
                    llvm::Value* existingExpression = expressionMap[expression];
                    instruction.replaceAllUsesWith(existingExpression);
                    instruction.eraseFromParent();
                } else {
                    expressionMap[expression] = &instruction;
                }
            }*//*
        }
    }*/

    //建立支配树
    // 遍历支配树节点
    Function* entryFunction = mod->getFunction("main");
    DominatorTree DT(*entryFunction);

    // 遍历支配树节点
    for (Function::iterator it = entryFunction->begin(), end = entryFunction->end(); it != end; ++it) {
        BasicBlock* basicBlock = &*it;
        errs() << "Basic Block: " << basicBlock->getName() << "\n";

        // 遍历支配的子节点
        for (DomTreeNode* childNode : DT.getNode(basicBlock)->getChildren()) {
            BasicBlock* dominatedBlock = childNode->getBlock();
            errs() << "  Dominated Block: " << dominatedBlock->getName() << "\n";
        }

    }
    cout<<"finish bb out"<<endl;
    if(showSSA){
        // 生成SSA形式的中间代码
        // 创建 DominatorTree
        Function* entryFunction = mod->getFunction("main");
        DominatorTree DT(*entryFunction);

        // 遍历每个函数并将其转换为 SSA 形式
        for (Function& function : mod->getFunctionList()) {
            std::vector<AllocaInst*> Allocas;
            for (BasicBlock& basicBlock : function) {
                for (Instruction& instruction : basicBlock) {
                    if (auto* alloca = dyn_cast<AllocaInst>(&instruction)) {
                        Allocas.push_back(alloca);
                    }
                }
            }
            PromoteMemToReg(Allocas, DT);
        }

        string target_ssa = target_path + ".ssa";
        auto ssa_file = make_unique<llvm::ToolOutputFile>(
                target_ssa, error_msg, llvm::sys::fs::F_None
        );
        auto ssa_ostream = &ssa_file->os();

        mod->print(*ssa_ostream, nullptr);

        ssa_file->keep();
    }


    PM.add(llvm::createGreedyRegisterAllocator());
    bool isModuleValid = !llvm::verifyModule(*mod);


    if (isModuleValid) {
        cout << "Module is valid!\n";
    } else {
        cout << "Module is invalid!\n";
    }
    PM.run(*mod);
    if (showLLVM) {
        string target_llvm = target_path + ".ll";
        auto output_file = make_unique<llvm::ToolOutputFile>(
            target_llvm, error_msg, llvm::sys::fs::F_None
        );
        auto output_ostream = &output_file->os();

        mod->print(*output_ostream, nullptr);
        output_file->keep();


    }


    if(showAsm){
        std::error_code ec;
        llvm::raw_fd_ostream dest(target_path+".s", ec, llvm::sys::fs::F_None);

        llvm::TargetOptions targetOptions;
        targetOptions.PrintMachineCode = false;
        llvm::Triple triple;
        //TheTriple.setTriple(llvm::sys::getDefaultTargetTriple());
        triple.setArch(llvm::Triple::riscv64);
        triple.setObjectFormat(llvm::Triple::ObjectFormatType::ELF);
        triple.setEnvironment(llvm::Triple::EnvironmentType::Simulator);
        std::string error;
        const llvm::Target* target = llvm::TargetRegistry::lookupTarget(triple.getTriple(), error);
        llvm::TargetMachine* targetMachine = target->createTargetMachine(triple.getTriple(), "", "", targetOptions, llvm::None);
        // 生成汇编代码
        llvm::legacy::PassManager passManager;


        if (targetMachine->addPassesToEmitFile(passManager, dest, nullptr, llvm::CGFT_AssemblyFile)) {
            llvm::errs() << "TargetMachine can't emit a file of this type\n";
            return 1;
        }

        passManager.run(*mod);

        dest.flush();

    }

    if(showFinal) {
        auto obj_file_name = target_path + ".o";
        auto obj_file = make_unique<llvm::ToolOutputFile>(
            obj_file_name, error_msg, llvm::sys::fs::F_None
        );

        auto obj_ostream = &obj_file->os();
        //TPC.addISelPasses();
        //TPC.addMachinePasses();
        //TPC.setInitialized();
        LLVMTM.addPassesToEmitFile(PM, *obj_ostream, nullptr, llvm::CGFT_ObjectFile);

        //PM.add(llvm::createFreeMachineFunctionPass());
        PM.run(*mod);
        obj_file->keep();

        auto command_string = string("clang -w --target=riscv64-unknown-elf ") + target_path + ".o -o " + target_path + ".sysyexe -L. -lsysy_io";
        //auto command_string = string("clang -w -v --target=riscv64-unknown-elf ") + target_path + ".o -o " + target_path ;
        system(command_string.c_str());
    }
    cout << "all right" << endl;

    return 0;
}
