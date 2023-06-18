#ifndef _ast_HPP_
#define _ast_HPP_

#include <vector>
#include <memory>
#include <iostream>

using namespace std;

// 智能指针宏定义
#define S_PTR  shared_ptr  

// +- 运算符
enum addop {
  OP_PLUS,
  OP_MINUS
};

// */% 运算符
enum mulop {
  OP_MUL,
  OP_DIV,
  OP_MOD
};

// int viod 类型
enum typeFunc {
  TYPE_INT,
  TYPE_VOID
};

enum relop {
  OP_EQ, // ==
  OP_NEQ, // !=
  OP_LT, // <
  OP_GT, // >
  OP_LTE, // <=
  OP_GTE // >=
};

// 单目运算符
enum unaryop {
  OP_POS, // +
  OP_NEG, // -
  OP_NOT // !
};

// 逻辑运算份额
enum logop {
  OP_AND,  // &&
  OP_OR  // ||
};

// accept函数
struct TreeNodeAcc;

// 编译单元
struct TreeNodeTopLevel;
// 声明
struct TreeNodeDeclDef;

// 常量
struct TreeNodeConstDecl;
struct TreeNodeConstDefList;
struct TreeNodeConstDef;
struct TreeNodeArrayConstExpList;
struct TreeNodeConstInitVal;
struct TreeNodeConstInitValList;

// 变量
struct TreeNodeVarDecl;
struct TreeNodeVarDefList;
struct TreeNodeVarDef;
struct TreeNodeInitVal;
struct TreeNodeInitValList;

// 函数
struct TreeNodeFuncDef;
struct TreeNodeFuncFParamList;
struct TreeNodeFuncFParam;
struct TreeNodeParamArrayExpList;

// 块
struct TreeNodeBlock;
struct TreeNodeBlockItemList;
struct TreeNodeBlockItem;

// 语句
struct TreeNodeStmt;
struct TreeNodeAssignStmt;
struct TreeNodeIfStmt;
struct TreeNodeBreakStmt;
struct TreeNodeContinueStmt;
struct TreeNodeWhileStmt;
struct TreeNodeReturnStmt;

// 表达式
struct TreeNodeExp;
struct TreeNodeCond;
struct TreeNodeLVal;
struct TreeNodeArrayExpList;
struct TreeNodePrimaryExp;
struct TreeNodeNumber;
struct TreeNodeUnaryExp;
struct TreeNodeCallee;
struct TreeNodeExpList;
struct TreeNodeMulExp;
struct TreeNodeAddExp;
struct TreeNodeRelExp;
struct TreeNodeEqExp;
struct TreeNodeLAndExp;
struct TreeNodeLOrExp;
struct TreeNodeConstExp;
class TreeVisit;
class TreeNodePrinter;

// 遍历
class astRoot {
public:
  astRoot(TreeNodeTopLevel* start_node) {
    root = S_PTR <TreeNodeTopLevel>(start_node);
  };
  astRoot(astRoot &&tree) {
    root = tree.root;
    tree.root = nullptr;
  };
  TreeNodeTopLevel* get_root() { return root.get(); }
  void run_visitor(TreeVisit& visitor);
private:
  S_PTR <TreeNodeTopLevel> root = nullptr;
};

// 遍历树visitor
class TreeVisit {
  public:
  virtual void visit(TreeNodeConstExp &) = 0;
  virtual void visit(TreeNodeTopLevel &) = 0;
  virtual void visit(TreeNodeConstDecl &) = 0;
  virtual void visit(TreeNodeConstDef &) = 0;
  virtual void visit(TreeNodeConstInitVal &) = 0;
  virtual void visit(TreeNodeVarDecl &) = 0;
  virtual void visit(TreeNodeVarDef &) = 0;
  virtual void visit(TreeNodeInitVal &) = 0;
  virtual void visit(TreeNodeFuncDef &) = 0;
  virtual void visit(TreeNodeFuncFParam &) = 0;
  virtual void visit(TreeNodeBlock &) = 0;
  virtual void visit(TreeNodeBreakStmt &) = 0;
  virtual void visit(TreeNodeContinueStmt &) = 0;
  virtual void visit(TreeNodeAssignStmt &) = 0;
  virtual void visit(TreeNodeIfStmt &) = 0;
  virtual void visit(TreeNodeWhileStmt &) = 0;
  virtual void visit(TreeNodeReturnStmt &) = 0;
  virtual void visit(TreeNodeLVal &) = 0;
  virtual void visit(TreeNodePrimaryExp &) = 0;
  virtual void visit(TreeNodeNumber &) = 0;
  virtual void visit(TreeNodeUnaryExp &) = 0;
  virtual void visit(TreeNodeCallee &) = 0;
  virtual void visit(TreeNodeMulExp &) = 0;
  virtual void visit(TreeNodeAddExp &) = 0;
  virtual void visit(TreeNodeRelExp &) = 0;
  virtual void visit(TreeNodeEqExp &) = 0;
  virtual void visit(TreeNodeLAndExp &) = 0;
  virtual void visit(TreeNodeLOrExp &) = 0;
};

// 继承方法accept
struct TreeNodeAcc{
  virtual void accept(TreeVisit&) = 0;
};

// 编译单元 TopLevel
struct TreeNodeTopLevel:TreeNodeAcc{
  // 声明类vector 
  vector <S_PTR <TreeNodeDeclDef> > DeclDefList;
  virtual void accept(TreeVisit&) final ;
};

// 声明 DeclDef
// 包括常量，变量，函数
struct TreeNodeDeclDef:TreeNodeAcc{
  // 常数声明
  S_PTR <TreeNodeConstDecl> ConstDecl;
  // 变量声明
  S_PTR <TreeNodeVarDecl> VarDecl;
  // 函数声明
  S_PTR <TreeNodeFuncDef> FuncDef;
  virtual void accept(TreeVisit&) final;
};

// 常量声明 ConstDecl
struct TreeNodeConstDecl:TreeNodeAcc{
  // 常数定义 vector
  vector <S_PTR <TreeNodeConstDef> > ConstDefList;
  typeFunc type;
  virtual void accept(TreeVisit&) final;
};

// 常量声明列表 ConstDefList
struct TreeNodeConstDefList{
  vector <S_PTR <TreeNodeConstDef> >list;
};

// 常量定义 ConstDef
struct TreeNodeConstDef:TreeNodeAcc{
  vector <S_PTR <TreeNodeConstExp> > ArrayConstExpList;
  S_PTR <TreeNodeConstInitVal> ConstInitVal;
  string id;
  virtual void accept(TreeVisit&) final;
};

// 常量数组 ArrayConstExpList
struct TreeNodeArrayConstExpList{
  vector <S_PTR <TreeNodeConstExp> >list;
};

// 常量初值 ConstInitVal
struct TreeNodeConstInitVal:TreeNodeAcc{
  S_PTR <TreeNodeConstExp> ConstExp;
  vector <S_PTR <TreeNodeConstInitVal> > ConstInitValList;
  std::vector<int> bounds; 
  virtual void accept(TreeVisit&) final;
};

// 常量初值列表 ConstInitValList
struct TreeNodeConstInitValList{
  vector <S_PTR <TreeNodeConstInitVal> >list;
};

// 变量声明 VarDecl
struct TreeNodeVarDecl:TreeNodeAcc{
  // 变量定义 vector
  vector <S_PTR <TreeNodeVarDef> > VarDefList;
  typeFunc type;
  virtual void accept(TreeVisit&) final;
};

// 变量声明列表 VarDefList
struct TreeNodeVarDefList{
  vector <S_PTR <TreeNodeVarDef> >list;
};

// 变量定义 VarDef
struct TreeNodeVarDef:TreeNodeAcc{
  string id;
  vector <S_PTR <TreeNodeConstExp> > ArrayConstExpList;
  S_PTR <TreeNodeInitVal> InitVal;
  virtual void accept(TreeVisit&) final;
};

// 变量初值 InitVal
struct TreeNodeInitVal:TreeNodeAcc{
  vector <S_PTR <TreeNodeInitVal> > InitValList;  
  S_PTR <TreeNodeExp> Exp;
  std::vector<int> bounds;
  virtual void accept(TreeVisit&) final;
};

// 变量初值列表 InitValList
struct TreeNodeInitValList{
  vector <S_PTR <TreeNodeInitVal> >list;
};

// 函数定义 FuncDef
struct TreeNodeFuncDef:TreeNodeAcc{
  string id;
  typeFunc type;
  vector <S_PTR <TreeNodeFuncFParam> > FuncFParamList;
  S_PTR <TreeNodeBlock> Block;
  virtual void accept(TreeVisit&) final;
};

// 函数参数表 FuncFParamList
struct TreeNodeFuncFParamList{
  vector <S_PTR <TreeNodeFuncFParam> >list;
};

// 函数参数 FuncFParam
struct TreeNodeFuncFParam:TreeNodeAcc{
  string id;
  bool isarray;
  typeFunc type;
  vector <S_PTR <TreeNodeExp> > ParamArrayExpList;
  virtual void accept(TreeVisit&) final;
};

// 参数数组 ParamArrayExpList
struct TreeNodeParamArrayExpList{
  vector <S_PTR <TreeNodeExp> >list;
};

// 块 Block
struct TreeNodeBlock:TreeNodeAcc{
  vector <S_PTR <TreeNodeBlockItem> > BlockItemList;
  virtual void accept(TreeVisit&) final;
};

// 块列表 BlockItemList
struct TreeNodeBlockItemList{
  vector <S_PTR <TreeNodeBlockItem> >list;
};

// 块元素 BlockItem
struct TreeNodeBlockItem:TreeNodeAcc{
  // 常数定义块
  S_PTR <TreeNodeConstDecl> ConstDecl;
  // 变量定义块
  S_PTR <TreeNodeVarDecl> VarDecl;
  // 语句块
  S_PTR <TreeNodeStmt> Stmt;
  virtual void accept(TreeVisit&) final;
};

// 语句 Stmt
struct TreeNodeStmt:TreeNodeAcc{
  // break语句
  S_PTR <TreeNodeBreakStmt> BreakStmt;
  // continue语句
  S_PTR <TreeNodeContinueStmt> ContinueStmt;
  // 赋值语句
  S_PTR <TreeNodeAssignStmt> AssignStmt;
  // 表达式
  S_PTR <TreeNodeExp> Exp;
  // 块
  S_PTR <TreeNodeBlock> Block;
  // if语句
  S_PTR <TreeNodeIfStmt> IfStmt;
  // while语句
  S_PTR <TreeNodeWhileStmt> WhileStmt;
  // return语句
  S_PTR <TreeNodeReturnStmt> ReturnStmt;
  virtual void accept(TreeVisit&) final;
};

// break语句
struct TreeNodeBreakStmt:TreeNodeAcc{
  virtual void accept(TreeVisit&) final;
};

// continue语句
struct TreeNodeContinueStmt:TreeNodeAcc{
  virtual void accept(TreeVisit&) final;
};

// 赋值语句
struct TreeNodeAssignStmt:TreeNodeAcc{
  // 左值表达式
  S_PTR <TreeNodeLVal> LVal;
  // 表达式
  S_PTR <TreeNodeExp> Exp;
  virtual void accept(TreeVisit&) final;
};

// if语句
struct TreeNodeIfStmt:TreeNodeAcc{
  S_PTR <TreeNodeCond> Cond;
  S_PTR <TreeNodeStmt> ifStmt;
  S_PTR <TreeNodeStmt> elseStmt;
  virtual void accept(TreeVisit&) final;
};

// while语句
struct TreeNodeWhileStmt:TreeNodeAcc{
  // while条件列表
  S_PTR <TreeNodeCond> Cond;
  // while循环的语句块
  S_PTR <TreeNodeStmt> Stmt;
  virtual void accept(TreeVisit&) final;
}; 

// return语句
struct TreeNodeReturnStmt:TreeNodeAcc{
  // return值
  S_PTR <TreeNodeExp> Exp;
  virtual void accept(TreeVisit&) final;
};

// 表达式
struct TreeNodeExp:TreeNodeAcc{
  S_PTR <TreeNodeAddExp> AddExp;
  virtual void accept(TreeVisit&) final;
};

// 条件表达式 Cond
struct TreeNodeCond:TreeNodeAcc{
  S_PTR <TreeNodeLOrExp> LOrExp;
  virtual void accept(TreeVisit&) final;
};

// 左值表达式 LVal
struct TreeNodeLVal:TreeNodeAcc{
  string id;
  vector <S_PTR <TreeNodeExp> > ArrayExpList;
  virtual void accept(TreeVisit&) final;
};

// 数组
struct TreeNodeArrayExpList{
  vector <S_PTR <TreeNodeExp> >list;
};

// 基本表达式 PrimaryExp
struct TreeNodePrimaryExp:TreeNodeAcc{
  // 表达式
  S_PTR <TreeNodeExp> Exp;
  // 左值表达式
  S_PTR <TreeNodeLVal> LVal;
  // 基本数字
  S_PTR <TreeNodeNumber> Number;
  virtual void accept(TreeVisit&) final;
};

// 数字 Number
struct TreeNodeNumber:TreeNodeAcc{
  int num;
  virtual void accept(TreeVisit&) final;
};

// 单目运算 UnaryExp
struct TreeNodeUnaryExp:TreeNodeAcc{
  // 运算符
  unaryop op;
  // 基本表达式运算
  S_PTR <TreeNodePrimaryExp> PrimaryExp;
  // 函数调用运算
  S_PTR <TreeNodeCallee> Callee;
  // 单目运算
  S_PTR <TreeNodeUnaryExp> UnaryExp;
  virtual void accept(TreeVisit&) final;
};

// 调用 Callee
struct TreeNodeCallee:TreeNodeAcc{
  string id;
  vector <S_PTR <TreeNodeExp> > ExpList;
  virtual void accept(TreeVisit&) final;
};

// 表达式列表 ExpList
struct TreeNodeExpList{
  vector <S_PTR <TreeNodeExp> >list;
};

// 乘除模表达式 MulExp
struct TreeNodeMulExp:TreeNodeAcc{
  // 运算符
  mulop op;
  S_PTR <TreeNodeMulExp> MulExp;
  S_PTR <TreeNodeUnaryExp> UnaryExp;
  virtual void accept(TreeVisit&) final;
};

// 加减表达式 AddExp
struct TreeNodeAddExp:TreeNodeAcc{
  // 运算符
  addop op;
  S_PTR <TreeNodeAddExp> AddExp;
  S_PTR <TreeNodeMulExp> MulExp;
  virtual void accept(TreeVisit&) final;
};

// 关系表达式 RelExp
struct TreeNodeRelExp:TreeNodeAcc{
  // 运算符
  relop op;
  S_PTR <TreeNodeRelExp> RelExp;
  S_PTR <TreeNodeAddExp> AddExp;
  virtual void accept(TreeVisit&) final;
};

// 相等性表达式 EqExp
struct TreeNodeEqExp:TreeNodeAcc{
  // 运算符
  relop op;
  S_PTR <TreeNodeEqExp> EqExp;
  S_PTR <TreeNodeRelExp> RelExp;
  virtual void accept(TreeVisit&) final;
};

// 与表达式 LAndExp
struct TreeNodeLAndExp:TreeNodeAcc{
  // 运算符
  logop op;
  S_PTR <TreeNodeLAndExp> LAndExp;
  S_PTR <TreeNodeEqExp> EqExp;
  virtual void accept(TreeVisit&) final;
};

// 或表达式 LOrExp
struct TreeNodeLOrExp:TreeNodeAcc{
  // 运算符
  logop op;
  S_PTR <TreeNodeLOrExp> LOrExp;
  S_PTR <TreeNodeLAndExp> LAndExp;
  virtual void accept(TreeVisit&) final;
};

// 常量表达式 ConstExp
struct TreeNodeConstExp:TreeNodeAcc{
  S_PTR <TreeNodeAddExp> AddExp;
  virtual void accept(TreeVisit&) final;
};

// 打印语法树
class TreeNodePrinter : public TreeVisit {
private:
  // 语法树当前层次
  int depth = 0;
public:
  // 语法树节点控制
  void visit(TreeNodeConstExp &) final;
  void visit(TreeNodeTopLevel &) final;
  void visit(TreeNodeConstDecl &) final;
  void visit(TreeNodeConstDef &) final;
  void visit(TreeNodeConstInitVal &) final;
  void visit(TreeNodeVarDecl &) final;
  void visit(TreeNodeVarDef &) final;
  void visit(TreeNodeInitVal &) final;
  void visit(TreeNodeFuncDef &) final;
  void visit(TreeNodeFuncFParam &) final;
  void visit(TreeNodeBlock &) final;
  void visit(TreeNodeBreakStmt &) final;
  void visit(TreeNodeContinueStmt &) final;
  void visit(TreeNodeAssignStmt &) final;
  void visit(TreeNodeIfStmt &) final;
  void visit(TreeNodeWhileStmt &) final;
  void visit(TreeNodeReturnStmt &) final;
  void visit(TreeNodeLVal &) final;
  void visit(TreeNodePrimaryExp &) final;
  void visit(TreeNodeNumber &) final;
  void visit(TreeNodeUnaryExp &) final;
  void visit(TreeNodeCallee &) final;
  void visit(TreeNodeMulExp &) final;
  void visit(TreeNodeAddExp &) final;
  void visit(TreeNodeRelExp &) final;
  void visit(TreeNodeEqExp &) final;
  void visit(TreeNodeLAndExp &) final;
  void visit(TreeNodeLOrExp &) final;

  // 语法树层数控制
  void add_depth() { depth += 1; }
  void remove_depth() { depth -= 1; }
};
#endif // _ast_HPP_