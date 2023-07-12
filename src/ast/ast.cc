#include "ast.hh"
#include <iostream>
#include <string>

#define vvtree visitor.visit(*this)

using namespace std;

string retType(typeFunc tmp) {
    if(tmp == TYPE_INT) {
        return "int";
    }
    return "void";
}

// 语法树深度
void showDepth(int depth) {
    cout << depth << string(depth, '.');
}

// TreeVisit
void TreeNodeTopLevel::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeConstDecl::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeConstDef::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeConstInitVal::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeVarDecl::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeVarDef::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeInitVal::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeFuncDef::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeFuncFParam::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeBlock::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeBreakStmt::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeContinueStmt::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeAssignStmt::accept(TreeVisit &visitor) {
    vvtree;
}
void TreeNodeIfStmt::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeWhileStmt::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeReturnStmt::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeLVal::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeNumber::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeUnaryExp::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeCallee::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeMulExp::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeAddExp::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeRelExp::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeEqExp::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeLAndExp::accept(TreeVisit &visitor){
    vvtree;
}
void TreeNodeLOrExp::accept(TreeVisit &visitor){
    vvtree;
}


// 打印语法树
// TopLevel 输出编译单元
void TreeNodePrinter::visit(TreeNodeTopLevel& node) {
    showDepth(depth);
    cout << "program" << endl;
    add_depth();
    // 访问元素
    for (auto decl : node.DeclDefList) {
        decl->accept(*this);
    }
    remove_depth();
}
// ConstDecl 输出常数声明
void TreeNodePrinter::visit(TreeNodeConstDecl& node) {
    showDepth(depth);
    cout << "ConstDecl " << retType(node.type) << endl;
    add_depth();
    // 访问元素
    for (auto p : node.ConstDefList) {
        p->accept(*this);
    }
    remove_depth();
}
// ConstDef 输出常数定义
void TreeNodePrinter::visit(TreeNodeConstDef& node) {
    showDepth(depth);
    cout << "ConstDef: " << node.id << '\n';
    add_depth();
    // 访问元素
    for (auto p : node.ArrayConstExpList) {
        p->accept(*this);
    }
    if (node.ConstInitVal) {
        node.ConstInitVal->accept(*this);
    }
    remove_depth();
}
// ConstInitVal 输出常数初始状态
void TreeNodePrinter::visit(TreeNodeConstInitVal& node) {
    showDepth(depth);
    cout << "ConstInitVal" << endl;
    add_depth();
    // 单个
    if (node.ConstExp) {
        node.ConstExp->accept(*this);
    } 
    // 多个，遍历列表
    else {
        for (auto p : node.ConstInitValList) {
            p->accept(*this);
        }
    }
    remove_depth();
}
// ConstExp 输出常量表达式
void TreeNodePrinter::visit(TreeNodeConstExp& node) {
    showDepth(depth);
    std::cout << "const_exp" << std::endl;
    add_depth();
    node.AddExp->accept(*this);
    remove_depth();
}
// VarDecl 输出变量声明
void TreeNodePrinter::visit(TreeNodeVarDecl& node) {
    showDepth(depth);
    cout << "VarDecl: " << retType(node.type) << endl;
    add_depth();
    // 访问元素
    for (auto p : node.VarDefList) {
        p->accept(*this);
    }
    remove_depth();
}
// VarDef 输出变量定义
void TreeNodePrinter::visit(TreeNodeVarDef& node) {
    showDepth(depth);
    cout << "VarDef: " << node.id << endl;
    add_depth();
    // 访问元素
    for (auto p : node.ArrayConstExpList) {
        p->accept(*this);
    }
    // 初值
    if (node.InitVal) {
        node.InitVal->accept(*this);
    }
    remove_depth();
}
// InitVal 输出变量初值
void TreeNodePrinter::visit(TreeNodeInitVal& node) {
    showDepth(depth);
    cout << "ConstInitVal" << endl;
    add_depth();
    // 单个
    if (node.Exp) {
        node.Exp->accept(*this);
    } 
    // 多个
    else {
        for (auto p : node.InitValList) {
            p->accept(*this);
        }
    }
    remove_depth();
}
// FuncDef 输出函数定义
void TreeNodePrinter::visit(TreeNodeFuncDef& node) {
    showDepth(depth);
    cout << "FuncDef: " << retType(node.type) << ' ' << node.id << endl;
    add_depth();
    // 访问元素
    for (auto p : node.FuncFParamList) {
        p->accept(*this);
    }
    // 访问函数内容
    if (node.Block) {
        node.Block->accept(*this);
    }
    remove_depth();
}
// FuncFParam 输出函数参数
void TreeNodePrinter::visit(TreeNodeFuncFParam& node) {
    showDepth(depth);
    cout << "FuncFParam" << node.type << " " << node.id \
        << " isarray:" << node.isarray << '\n';
    add_depth();
    // 访问元素
    for (auto p : node.ParamArrayExpList) {
        p->accept(*this);
    }
    remove_depth();
}
// Block 输出块
void TreeNodePrinter::visit(TreeNodeBlock& node) {
    showDepth(depth);
    cout << "Block" << endl;
    add_depth();
    // 访问元素
    for (auto p : node.BlockItemList) {
        p->accept(*this);
    }
    remove_depth();
}
// break
void TreeNodePrinter::visit(TreeNodeBreakStmt& node) {
    showDepth(depth);
    cout << "break;" << endl;
}
// continue
void TreeNodePrinter::visit(TreeNodeContinueStmt& node) {
    showDepth(depth);
    cout << "continue;\n";
}
// AssignStmt 输出赋值语句
void TreeNodePrinter::visit(TreeNodeAssignStmt& node) {
    showDepth(depth);
    cout << "AssignStmt" << endl;
    add_depth();
    node.LVal->accept(*this);
    node.Exp->accept(*this);
    remove_depth();
}
// If 输出If语句
void TreeNodePrinter::visit(TreeNodeIfStmt& node) {
    showDepth(depth);
    cout << "IfStmt" << endl;
    add_depth();
    node.Cond->accept(*this);
    node.ifStmt->accept(*this);
    if (node.elseStmt) {
        node.elseStmt->accept(*this);
    }
    remove_depth();
}
// While 输出while语句
void TreeNodePrinter::visit(TreeNodeWhileStmt& node) {
    showDepth(depth);
    cout << "WhileStmt" << endl;
    add_depth();
    // 访问while的条件cond
    if (node.Cond) {
        node.Cond->accept(*this);
    }
    // 访问while循环语句块
    node.Stmt->accept(*this);
    remove_depth();
}
// return 输出return语句
void TreeNodePrinter::visit(TreeNodeReturnStmt& node) {
    showDepth(depth);
    cout << "Return" << endl;
    add_depth();
    // 访问返回值
    if (node.Exp) {
        node.Exp->accept(*this);
    }
    remove_depth();
}
// LVal 输出左值表达式
void TreeNodePrinter::visit(TreeNodeLVal& node) {
    showDepth(depth);
    cout << "Lval: " << node.id << endl;
    add_depth();
    // 访问元素
    for (auto p : node.ArrayExpList) {
        p->accept(*this);
    }
    remove_depth();
}
// PrimaryExp表达式
void TreeNodePrinter::visit(TreeNodePrimaryExp & node) {
    showDepth(depth);
    std::cout << "PrimaryExp:\t" << std::endl;
    add_depth();
    if (node.Exp) {
        node.Exp->accept(*this);
        return;
    } else if (node.LVal) {
        node.LVal->accept(*this);
        return;
    } else if (node.Number) {
        node.Number->accept(*this);
        return;
    }
    remove_depth();
}
// number
void TreeNodePrinter::visit(TreeNodeNumber& node) {
    showDepth(depth);
    cout << "Number: " << node.num << '\n';
}
// Exp
void TreeNodePrinter::visit(TreeNodeUnaryExp& node) {
    showDepth(depth);
    cout << "UnaryExp： ";
    add_depth();
    // 访问不同类型的表达式
    if (node.PrimaryExp) {
        cout << "PrimaryExp" << endl;
        node.PrimaryExp->accept(*this);
    } 
    else if (node.Callee) {
        cout << "Callee" << endl;
        node.Callee->accept(*this);
    } 
    else {
        showDepth(depth);
        string op;
        if(node.op == SYSY_POS)
            op = "+";
        else if(node.op == SYSY_NEG)
            op = "-";
        else op = "!";
        cout << op << endl;
        node.UnaryExp->accept(*this);
    }
    remove_depth();
}
// Callee 函数调用
void TreeNodePrinter::visit(TreeNodeCallee& node) {
    showDepth(depth);
    cout << "Call: " << node.id << endl;
    add_depth();
    for (auto p : node.ExpList) {
        p->accept(*this);
    }
    remove_depth();
}
// MulExp
void TreeNodePrinter::visit(TreeNodeMulExp& node) {
    showDepth(depth);
    string op;
    if(node.op == SYSY_MUL)
        op = "*";
    else if(node.op == SYSY_DIV)
        op = "/";
    else op = "%";
    // test
    if(node.MulExp && node.UnaryExp)
        cout << "MulExp: " << op << endl;
    else
        cout << endl;
    add_depth();
    if (node.MulExp) {
        node.MulExp->accept(*this);
    }
    if (node.UnaryExp) {
        node.UnaryExp->accept(*this);
    }
    remove_depth();
}
// AddExp
void TreeNodePrinter::visit(TreeNodeAddExp& node) {
    showDepth(depth);
    string op;
    if(node.op == SYSY_PLUS)
        op = "+";
    else op = "-";
    // test
    if(node.AddExp && node.MulExp)
        cout << "AddExp: " << op << endl;
    else
        cout << endl;
    add_depth();
    if (node.AddExp) {
        node.AddExp->accept(*this);
    }
    if (node.MulExp) {
        node.MulExp->accept(*this);
    }
    remove_depth();
}
// RelExp
void TreeNodePrinter::visit(TreeNodeRelExp& node) {
    showDepth(depth);
    string op;
    if(node.op == SYSY_EQ) op = "==";
    else if(node.op == SYSY_NEQ) op = "!=";
    else if(node.op == SYSY_LT) op = "<";
    else if(node.op == SYSY_GT) op = ">";
    else if(node.op == SYSY_LTE) op = "<=";
    else op = ">=";
    // test
    if(node.RelExp && node.AddExp)
        cout << "RelExp: " << op << endl;
    else
        cout << endl;
    add_depth();
    if (node.RelExp) {
        node.RelExp->accept(*this);
    }
    if (node.AddExp) {
        node.AddExp->accept(*this);
    }
    remove_depth();
}
// EqExp
void TreeNodePrinter::visit(TreeNodeEqExp& node) {
    showDepth(depth);
    string op;
    if(node.op == SYSY_EQ) op = "==";
    else if(node.op == SYSY_NEQ) op = "!=";
    else if(node.op == SYSY_LT) op = "<";
    else if(node.op == SYSY_GT) op = ">";
    else if(node.op == SYSY_LTE) op = "<=";
    else op = ">=";
    // test
    if(node.EqExp && node.RelExp)
        cout << "EqExp: " << op << endl;
    else
        cout << endl;
    add_depth();
    if (node.EqExp) {
        node.EqExp->accept(*this);
    }
    if (node.RelExp) {
        node.RelExp->accept(*this);
    }
    remove_depth();
}
// LAndExp
void TreeNodePrinter::visit(TreeNodeLAndExp& node) {
    showDepth(depth);
    cout << "LogicalAndExp: &&" << endl;
    add_depth();
    if (node.LAndExp) {
        node.LAndExp->accept(*this);
    }
    if (node.EqExp) {
        node.EqExp->accept(*this);
    }
    remove_depth();
}
// LOrExp
void TreeNodePrinter::visit(TreeNodeLOrExp& node) {
    showDepth(depth);
    cout << "LogicalOrExp: ||" << endl;
    add_depth();
    if (node.LOrExp) {
        node.LOrExp->accept(*this);
    }
    if (node.LAndExp) {
        node.LAndExp->accept(*this);
    }
    remove_depth();
}

// 声明 DeclDef
void TreeNodeDeclDef::accept(TreeVisit &visitor) {
    // 常量声明
    if (this->ConstDecl) {
        this->ConstDecl->accept(visitor);
    }
    // 变量声明 
    else if (this->VarDecl) {
        this->VarDecl->accept(visitor);
    } 
    // 函数声明
    else if (this->FuncDef) {
        this->FuncDef->accept(visitor);
    } 
}

// 块元素 BlockItem
void TreeNodeBlockItem::accept(TreeVisit &visitor) {
    // 常量块
    if (this->ConstDecl) {
        this->ConstDecl->accept(visitor);
    } 
    // 变量块
    else if (this->VarDecl) {
        this->VarDecl->accept(visitor);
    } 
    // 语句块
    else if (this->Stmt) {
        this->Stmt->accept(visitor);
    }
}

// 语句 Stmt
void TreeNodeStmt::accept(TreeVisit &visitor) {
    // Assign
    if (this->AssignStmt) {
        this->AssignStmt->accept(visitor);
    } 
    // Block
    else if (this->Block) {
        this->Block->accept(visitor);
    } 
    // Break
    else if (this->BreakStmt) {
        this->BreakStmt->accept(visitor);
    } 
    // Continue
    else if (this->ContinueStmt) {
        this->ContinueStmt->accept(visitor);
    } 
    // Exp
    else if (this->Exp) {
        this->Exp->accept(visitor);
    } 
    // While
    else if (this->WhileStmt) {
        this->WhileStmt->accept(visitor);
    } 
    // Return
    else if (this->ReturnStmt) {
        this->ReturnStmt->accept(visitor);
    } 
    // If
    else if (this->IfStmt) {
        this->IfStmt->accept(visitor);
    }
}


void TreeNodeExp::accept(TreeVisit &visitor){
    this->AddExp->accept(visitor);
}


void TreeNodeCond::accept(TreeVisit &visitor){
    this->LOrExp->accept(visitor);
}

void TreeNodePrimaryExp::accept(TreeVisit &visitor) {
    // TODO
    /*
    if (this->Exp) {
        this->Exp->accept(visitor);
    } else if (this->LVal) {
        this->LVal->accept(visitor);
    } else if (this->Number) {
        this->Number->accept(visitor);
    }*/
    visitor.visit(*this);
}

void TreeNodeConstExp::accept(TreeVisit &visitor){
    this->AddExp->accept(visitor);
}

void astRoot::run_visitor(TreeVisit& visitor) {
  root->accept(visitor);
}