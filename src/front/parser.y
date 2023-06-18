%code requires
{
#include <iostream>
#include <string>
#include "ast.hh"
using namespace std;
class fdriver;
}

%param { fdriver& driver }
%locations
%initial-action
{
    @$.begin.filename = @$.end.filename = &driver.file;
};

%code
{
  #include "fdriver.hh"
  #define yylex driver.lexer.yylex
  const bool checkParser = false;
}

%language "c++"
%require "3.5"
%define parser_class_name {parser}
%define api.token.constructor
%define api.value.type variant
%define parse.assert
%define parse.trace
%define parse.error verbose
%define api.token.prefix {TOK_}

%token tEND ERROR
// 基本呢运算符
%token tADD tSUB tMUL tDIV tNOT
// 比较运算符
%token tLT tLTE tGT tGTE tEQ tNEQ tMOD
// 特殊 = ； ，
%token tASSIN tSEMI tCOMMA 
// 括号类 { ( [ ] ) }
%token tLPAREN tRPAREN tLBRACK tRBRACK tLBRACE tRBRACE
// if-else
%token tIF tELSE
// 返回类型
%token tINT tVOID tRETURN
// 循环
%token tWHILE 
// ID num arr
%token <string>tIDENT
%token <int>tNUMBER 
%token tARRAY 
// 特殊
%token LETTER EOL COMMENT BLANK
%token tCONST tBREAK tCONTINUE 
%token tAND tOR 

%type <TreeNodeTopLevel*>               TopLevel
%type <TreeNodeDeclDef*>                DeclDef
%type <TreeNodeConstDecl*>              ConstDecl
%type <TreeNodeConstDefList*>           ConstDefList
%type <TreeNodeConstDef*>               ConstDef
%type <TreeNodeArrayConstExpList*>      ArrayConstExpList
%type <TreeNodeConstInitVal*>           ConstInitVal
%type <TreeNodeConstInitValList*>       ConstInitValList
%type <TreeNodeVarDecl*>                VarDecl
%type <TreeNodeVarDefList*>             VarDefList
%type <TreeNodeVarDef*>                 VarDef
%type <TreeNodeInitVal*>                InitVal
%type <TreeNodeInitValList*>            InitValList
%type <TreeNodeFuncDef*>                FuncDef
%type <typeFunc>                        DefType
%type <TreeNodeFuncFParamList*>         FuncFParamList
%type <TreeNodeFuncFParam*>             FuncFParam
%type <TreeNodeParamArrayExpList*>      ParamArrayExpList
%type <TreeNodeBlock*>                  Block
%type <TreeNodeBlockItemList*>          BlockItemList
%type <TreeNodeBlockItem*>              BlockItem
%type <TreeNodeStmt*>                   Stmt
%type <TreeNodeAssignStmt*>             AssignStmt
%type <TreeNodeIfStmt*>                 IfStmt
%type <TreeNodeBreakStmt*>              BreakStmt
%type <TreeNodeContinueStmt*>           ContinueStmt
%type <TreeNodeWhileStmt*>              WhileStmt
%type <TreeNodeReturnStmt*>             ReturnStmt
%type <TreeNodeExp*>                    Exp
%type <TreeNodeCond*>                   Cond
%type <TreeNodeLVal*>                   LVal
%type <TreeNodeArrayExpList*>           ArrayExpList
%type <TreeNodePrimaryExp*>             PrimaryExp
%type <TreeNodeNumber*>                 Number
%type <TreeNodeUnaryExp*>               UnaryExp
%type <TreeNodeCallee*>                 Callee
%type <unaryop>                         UnaryOp
%type <TreeNodeExpList*>                ExpList
%type <TreeNodeMulExp*>                 MulExp
%type <TreeNodeAddExp*>                 AddExp
%type <TreeNodeRelExp*>                 RelExp
%type <TreeNodeEqExp*>                  EqExp
%type <TreeNodeLAndExp*>                LAndExp
%type <TreeNodeLOrExp*>                 LOrExp
%type <TreeNodeConstExp*>               ConstExp

%start TopLevel 

%%
// 编译单元 CompUnit -> [ CompUnit ] ( Decl | FuncDef )
// DeclDef -> Decl | FuncDef
// END 结束
TopLevel:TopLevel DeclDef{
		$1->DeclDefList.push_back(shared_ptr<TreeNodeDeclDef>($2));
		$$ = $1;
	} 
	| DeclDef{
		$$ = new TreeNodeTopLevel();
		$$->DeclDefList.push_back(shared_ptr<TreeNodeDeclDef>($1));
	}
  | TopLevel tEND { 
    auto printer = new TreeNodePrinter; 
    driver.root  =  $1;
    return 0;
  }
	;

// 声明 Decl -> ConstDecl | VarDecl
// DeclDef -> Decl | FuncDef | ConstDecl
DeclDef:ConstDecl{
    $$ = new TreeNodeDeclDef();
    $$->ConstDecl = shared_ptr<TreeNodeConstDecl>($1);
    $$->VarDecl = nullptr;
    $$->FuncDef = nullptr;
    if(checkParser) cout << "ConstDecl" << endl;
    }
	| VarDecl{
    $$ = new TreeNodeDeclDef();
    $$->ConstDecl = nullptr;
    $$->VarDecl = shared_ptr<TreeNodeVarDecl>($1);
    $$->FuncDef = nullptr;
    if(checkParser) cout << "VarDecl" << endl;
  }
	| FuncDef{
    $$ = new TreeNodeDeclDef();
    $$->ConstDecl = nullptr;
    $$->VarDecl = nullptr;
    $$->FuncDef = shared_ptr<TreeNodeFuncDef>($1);
    if(checkParser) cout << "FuncDef" << endl;
  }
	;

// 常量声明 ConstDecl -> 'const' BType ConstDef { ',' ConstDef } ';'
// ConstDefList -> ConstDef { ',' ConstDef }
ConstDecl:tCONST DefType ConstDefList tSEMI{
    $$ = new TreeNodeConstDecl();
    $$->ConstDefList.swap($3->list);
    $$->type = TYPE_INT;
    if(checkParser) cout << "ConstDecl" << endl;
  }
	;

// 常量列表 ConstDefList -> ConstDef { ',' ConstDef }
ConstDefList:ConstDefList tCOMMA ConstDef{
    $1->list.push_back(shared_ptr<TreeNodeConstDef>($3));
    $$ = $1;
  }
	| ConstDef{
    $$ = new TreeNodeConstDefList();
    $$->list.push_back(shared_ptr<TreeNodeConstDef>($1));
  }
	;

// 常数定义 ConstDef -> Ident { '[' ConstExp ']' } '=' ConstInitVal
// ArrayConstExpList -> { '[' ConstExp ']' }
ConstDef:tIDENT ArrayConstExpList tASSIN ConstInitVal{
    $$ = new TreeNodeConstDef();
    $$->ArrayConstExpList.swap($2->list);
    $$->id = $1;
    $$->ConstInitVal = shared_ptr<TreeNodeConstInitVal>($4);
  }
	;

// 常量数组 ArrayConstExpList -> { '[' ConstExp ']' }
ArrayConstExpList:ArrayConstExpList tLBRACK ConstExp tRBRACK{
    $1->list.push_back(shared_ptr<TreeNodeConstExp>($3));
    $$ = $1;
  }
	|{
    $$ = new TreeNodeArrayConstExpList();
  };

// 常量初值 ConstInitVal -> ConstExp 
//         | '{' [ ConstInitVal { ',' ConstInitVal } ] '}'
ConstInitVal:ConstExp{
    $$ = new TreeNodeConstInitVal();
    $$->ConstExp = shared_ptr<TreeNodeConstExp>($1);
  }
	| tLBRACE ConstInitValList tRBRACE{
    $$ = new TreeNodeConstInitVal();
    $$->ConstExp = nullptr;
    $$->ConstInitValList.swap($2->list);
  }
	| tLBRACE tRBRACE{
    $$ = new TreeNodeConstInitVal();
    $$->ConstExp = nullptr;
  }
	;

// 常量初值列表 ConstInitValList -> [ ConstInitVal { ',' ConstInitVal } ]
ConstInitValList:ConstInitValList tCOMMA ConstInitVal{
    $1->list.push_back(shared_ptr<TreeNodeConstInitVal>($3));
    $$ = $1;
  }
	| ConstInitVal {
    $$ = new TreeNodeConstInitValList();
    $$->list.push_back(shared_ptr<TreeNodeConstInitVal>($1));
  }
	;

// 变量声明 VarDecl -> BType VarDef { ',' VarDef } ';'
// VarDefList -> VarDef { ',' VarDef }
VarDecl:DefType VarDefList tSEMI{
    $$ = new TreeNodeVarDecl();
    $$->VarDefList.swap($2->list);
    $$->type = TYPE_INT;
    if(checkParser) cout << "VarDecl" << endl;
  }
	;

// 变量列表 VarDefList -> VarDef { ',' VarDef }
VarDefList:VarDefList tCOMMA VarDef{
    $1->list.push_back(shared_ptr<TreeNodeVarDef>($3));
    $$ = $1;
  }
	| VarDef{
    $$ = new TreeNodeVarDefList();
    $$->list.push_back(shared_ptr<TreeNodeVarDef>($1));
  }
	;

// 变量定义 InitVal -> Exp | '{' [ InitVal { ',' InitVal } ] '}'
VarDef:tIDENT ArrayConstExpList{
    $$ = new TreeNodeVarDef();
    $$->id = $1;
    $$->ArrayConstExpList.swap($2->list);
    $$->InitVal = nullptr;
  }
	| tIDENT ArrayConstExpList tASSIN InitVal{
    $$ = new TreeNodeVarDef();
    $$->id = $1;
    $$->ArrayConstExpList.swap($2->list);
    $$->InitVal = shared_ptr<TreeNodeInitVal>($4);
  }
	;

// 变量初值 InitVal -> Exp | '{' [ InitVal { ',' InitVal } ] '}'
// InitValList -> [ InitVal { ',' InitVal } ]
InitVal:Exp{
    $$ = new TreeNodeInitVal();
    $$->Exp = shared_ptr<TreeNodeExp>($1);
  }
	| tLBRACE tRBRACE{
    $$ = new TreeNodeInitVal();
    $$->Exp = nullptr;
  }
	| tLBRACE InitValList tRBRACE{
    $$ = new TreeNodeInitVal();
    $$->Exp = nullptr;
    $$->InitValList.swap($2->list);
  }
	;

// 变量初值列表 InitValList -> [ InitVal { ',' InitVal } ]
InitValList:InitValList tCOMMA InitVal{
    $1->list.push_back(shared_ptr<TreeNodeInitVal>($3));
    $$ = $1;
  }
  | InitVal{
    $$ = new TreeNodeInitValList();
    $$->list.push_back(shared_ptr<TreeNodeInitVal>($1));
  }
	;

// 函数定义 FuncDef -> FuncType Ident '(' [FuncFParams] ')' Block
FuncDef:DefType tIDENT tLPAREN tRPAREN Block{
    $$ = new TreeNodeFuncDef();
    $$->type = $1;
    $$->id = $2;
    $$->Block = shared_ptr<TreeNodeBlock>($5);
    if(checkParser) cout << "FuncDef without params" << endl;
  }
	| DefType tIDENT tLPAREN FuncFParamList tRPAREN Block{
    $$ = new TreeNodeFuncDef();
    $$->type = $1;
    $$->id = $2;
    $$->FuncFParamList.swap($4->list);
    $$->Block = shared_ptr<TreeNodeBlock>($6);
    if(checkParser) cout << "FuncDef with params" << endl;
  }
	;

// 函数类型 DefType -> 'void' | 'int'
DefType:tVOID{$$ = TYPE_VOID;}
	| tINT{$$ = TYPE_INT;}
	;

// 函数参数列表 FuncFParams -> FuncFParam { ',' FuncFParam }
FuncFParamList:FuncFParamList tCOMMA FuncFParam{
    $1->list.push_back(shared_ptr<TreeNodeFuncFParam>($3));
    $$ = $1;
  }
	| FuncFParam{
    $$ = new TreeNodeFuncFParamList();
    $$->list.push_back(shared_ptr<TreeNodeFuncFParam>($1));
  }
	;

// 函数参数 FuncFParam -> BType Ident ['[' ']' { '[' Exp ']' }]
FuncFParam:DefType tIDENT ParamArrayExpList{
    $$ = new TreeNodeFuncFParam();
    $$->type = TYPE_INT;
    $$->isarray = 1;
    $$->id = $2;
    $$->ParamArrayExpList.swap($3->list);
  }
	| DefType tIDENT{
    $$ = new TreeNodeFuncFParam();
    $$->type = TYPE_INT;
    $$->id = $2;
    $$->isarray = 0;
  }
	;

// 数组参数
ParamArrayExpList:ParamArrayExpList tLBRACK Exp tRBRACK{
    $1->list.push_back(shared_ptr<TreeNodeExp>($3));
    $$ = $1;
  }
	| tARRAY{
    $$ = new TreeNodeParamArrayExpList();
  }
	;

// 语句块 Block -> '{' { BlockItem } '}'
Block:tLBRACE BlockItemList tRBRACE{
    $$ = new TreeNodeBlock();
    $$->BlockItemList.swap($2->list);
    if(checkParser) cout << "Block" << endl;
  }
	;

// 多语句列表 
BlockItemList:BlockItemList BlockItem{
    $1->list.push_back(shared_ptr<TreeNodeBlockItem>($2));
    $$ = $1;
  }
	|{
    $$ = new TreeNodeBlockItemList();
  }
	;

// 语句块项 BlockItem -> Decl | Stmt
// Decl -> ConstDecl | VarDecl
BlockItem:ConstDecl{
    $$ = new TreeNodeBlockItem();
    $$->ConstDecl = shared_ptr<TreeNodeConstDecl>($1);
    $$->VarDecl = nullptr;
    $$->Stmt = nullptr;
  }
	| VarDecl{
    $$ = new TreeNodeBlockItem();
    $$->ConstDecl = nullptr;
    $$->VarDecl = shared_ptr<TreeNodeVarDecl>($1);
    $$->Stmt = nullptr;
  }
	| Stmt{
    $$ = new TreeNodeBlockItem();
    $$->ConstDecl = nullptr;
    $$->VarDecl = nullptr;
    $$->Stmt = shared_ptr<TreeNodeStmt>($1);
  }
	;

// 语句 Stmt...
Stmt:AssignStmt{
    // 赋值语句
    // AssignStmt -> LVal ‘=’ Exp ‘；’
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = shared_ptr<TreeNodeAssignStmt>($1);
    $$->Exp = nullptr;
    $$->Block = nullptr;
    $$->IfStmt = nullptr;
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = nullptr;
  }
	| Exp tSEMI{
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = nullptr;
    $$->Exp = shared_ptr<TreeNodeExp>($1);
    $$->Block = nullptr;
    $$->IfStmt = nullptr;
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = nullptr;
  }
	| tSEMI{
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = nullptr;
    $$->Exp = nullptr;
    $$->Block = nullptr;
    $$->IfStmt = nullptr;
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = nullptr;
  }
	| Block{
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = nullptr;
    $$->Exp = nullptr;
    $$->Block = shared_ptr<TreeNodeBlock>($1);
    $$->IfStmt = nullptr;
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = nullptr;
  }
	| IfStmt{
    // 选择语句
    // IfStmt -> 'if' '( Cond ')' Stmt [ 'else' Stmt ]
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = nullptr;
    $$->Exp = nullptr;
    $$->Block = nullptr;
    $$->IfStmt = shared_ptr<TreeNodeIfStmt>($1);
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = nullptr;
  }
	| WhileStmt{
    // 循环语句
    // WhileStmt -> 'while' '(' Cond ')' Stmt
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = nullptr;
    $$->Exp = nullptr;
    $$->Block = nullptr;
    $$->IfStmt = nullptr;
    $$->WhileStmt = shared_ptr<TreeNodeWhileStmt>($1);
    $$->ReturnStmt = nullptr;
  } 
	| BreakStmt{
    $$ = new TreeNodeStmt();
    $$->BreakStmt = shared_ptr<TreeNodeBreakStmt>($1);
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = nullptr;
    $$->Exp = nullptr;
    $$->Block = nullptr;
    $$->IfStmt = nullptr;
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = nullptr;
  }
	| ContinueStmt{
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = shared_ptr<TreeNodeContinueStmt>($1);
    $$->AssignStmt = nullptr;
    $$->Exp = nullptr;
    $$->Block = nullptr;
    $$->IfStmt = nullptr;
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = nullptr;
  }
	| ReturnStmt{
    $$ = new TreeNodeStmt();
    $$->BreakStmt = nullptr;
    $$->ContinueStmt = nullptr;
    $$->AssignStmt = nullptr;
    $$->Exp = nullptr;
    $$->Block = nullptr;
    $$->IfStmt = nullptr;
    $$->WhileStmt = nullptr;
    $$->ReturnStmt = shared_ptr<TreeNodeReturnStmt>($1);
  }
	;

// break ';'
BreakStmt:tBREAK tSEMI{
    $$ = new TreeNodeBreakStmt();
    if(checkParser) cout << "BreakStmt" << endl;
  }
	;

// continue ';'
ContinueStmt:tCONTINUE tSEMI{
    $$ = new TreeNodeContinueStmt();
    if(checkParser) cout << "ContinueStmt" << endl;
  }
	;

// 赋值表达式
AssignStmt:LVal tASSIN Exp tSEMI{
    $$ = new TreeNodeAssignStmt();
    $$->LVal = shared_ptr<TreeNodeLVal>($1);
    $$->Exp = shared_ptr<TreeNodeExp>($3);
    if(checkParser) cout << "AssignStmt" << endl;
  }
	;

// 'if' '( Cond ')' Stmt [ 'else' Stmt ]
IfStmt:tIF tLPAREN Cond tRPAREN Stmt{
    $$ = new TreeNodeIfStmt();
    $$->Cond = shared_ptr<TreeNodeCond>($3);
    $$->ifStmt = shared_ptr<TreeNodeStmt>($5);
    if(checkParser) cout << "IfStmt" << endl;
  }
	| tIF tLPAREN Cond tRPAREN Stmt tELSE Stmt{
    $$ = new TreeNodeIfStmt();
    $$->Cond = shared_ptr<TreeNodeCond>($3);
    $$->ifStmt = shared_ptr<TreeNodeStmt>($5);
    $$->elseStmt = shared_ptr<TreeNodeStmt>($7);
    if(checkParser) cout << "IfElseStmt" << endl;
  }
	;

// 'while' '(' Cond ')' Stmt
WhileStmt:tWHILE tLPAREN Cond tRPAREN Stmt{
    $$ = new TreeNodeWhileStmt();
    $$->Cond = shared_ptr<TreeNodeCond>($3);
    $$->Stmt = shared_ptr<TreeNodeStmt>($5);
    if(checkParser) cout << "WhileStmt" << endl;
  }
	;

// return' [Exp] ';'
ReturnStmt:tRETURN Exp tSEMI{
    $$ = new TreeNodeReturnStmt();
    $$->Exp = shared_ptr<TreeNodeExp>($2);
    if(checkParser) cout << "ReturnStmt" << endl;
  }
	| tRETURN tSEMI{
    $$ = new TreeNodeReturnStmt();
    $$->Exp = nullptr;
    if(checkParser) cout << "ReturnStmt" << endl;
  }
	;

// 表达式 Exp -> AddExp
Exp:AddExp{
    $$ = new TreeNodeExp();
    $$->AddExp = shared_ptr<TreeNodeAddExp>($1);
    if(checkParser) cout << "Exp" << endl;
  }
	;

// 条件表达式 Cond -> LOrExp
Cond:LOrExp{
    $$ = new TreeNodeCond();
    $$->LOrExp = shared_ptr<TreeNodeLOrExp>($1);
  }
	;

// 左值表达式 LVal -> Ident {'[' Exp ']'}
LVal:tIDENT ArrayExpList{
    $$ = new TreeNodeLVal();
    $$->id = $1;
    $$->ArrayExpList.swap($2->list);
  }
	;

// 数组
ArrayExpList:ArrayExpList tLBRACK Exp tRBRACK{
    $1->list.push_back(shared_ptr<TreeNodeExp>($3));
    $$ = $1;
  }
	|{
    $$ = new TreeNodeArrayExpList();
  }
	;

// 基本表达式 PrimaryExp -> '(' Exp ')' | LVal | Number
PrimaryExp:tLPAREN Exp tRPAREN{
    $$ = new TreeNodePrimaryExp();
    $$->Exp = shared_ptr<TreeNodeExp>($2);
    $$->LVal = nullptr;
    $$->Number = nullptr;
  }
	| LVal{
    $$ = new TreeNodePrimaryExp();
    $$->Exp = nullptr;
    $$->LVal = shared_ptr<TreeNodeLVal>($1);
    $$->Number = nullptr;
  }
	| Number{
    $$ = new TreeNodePrimaryExp();
    $$->Exp = nullptr;
    $$->LVal = nullptr;
    $$->Number = shared_ptr<TreeNodeNumber>($1);
  }
	;

// 数值 Number -> IntConst
Number:tNUMBER{
    $$ = new TreeNodeNumber();
    $$->num = $1;
    if(checkParser) cout << "Number" << endl;
  }
	;

// 一元表达式 UnaryExp -> PrimaryExp | Ident '(' [FuncRParams] ')'
//                   | UnaryOp UnaryExp
// Callee -> Ident '(' [FuncRParams] ')'
UnaryExp:PrimaryExp{
    $$ = new TreeNodeUnaryExp();
    $$->op = OP_POS;
    $$->PrimaryExp = shared_ptr<TreeNodePrimaryExp>($1);
    $$->Callee = nullptr;
    $$->UnaryExp = nullptr;
  }
	| Callee{
    $$ = new TreeNodeUnaryExp();
    $$->op = OP_POS;
    $$->PrimaryExp = nullptr;
    $$->Callee = shared_ptr<TreeNodeCallee>($1);
    $$->UnaryExp = nullptr;
  } 
	| UnaryOp UnaryExp{
    $$ = new TreeNodeUnaryExp();
    $$->op = $1;
    $$->PrimaryExp = nullptr;
    $$->Callee = nullptr;
    $$->UnaryExp = shared_ptr<TreeNodeUnaryExp>($2);
  }
	;

// Callee -> Ident '(' [FuncRParams] ')'
Callee:tIDENT tLPAREN ExpList tRPAREN{
    $$ = new TreeNodeCallee();
    $$->id = $1;
    $$->ExpList.swap($3->list);
  }
  | tIDENT tLPAREN tRPAREN {
    $$ = new TreeNodeCallee();
    $$->id = $1;
  }
	;

// 单目运算符 UnaryOp -> '+' | '−' | '!'
UnaryOp: tADD{$$ = OP_POS;}
	| tSUB{$$ = OP_NEG;}
	| tNOT{$$ = OP_NOT;}
	;

// 表达式列表
ExpList:ExpList tCOMMA Exp{
    $1->list.push_back(shared_ptr<TreeNodeExp>($3));
    $$ = $1;
    }
	|Exp{
    $$ = new TreeNodeExpList();
    $$->list.push_back(shared_ptr<TreeNodeExp>($1));
  }
	;

// 乘除模表达式 MulExp -> UnaryExp 
//                   | MulExp ('*' | '/' | '%') UnaryExp
MulExp:UnaryExp{
    $$ = new TreeNodeMulExp();
    $$->MulExp = nullptr;
    $$->UnaryExp = shared_ptr<TreeNodeUnaryExp>($1);
  }
	| MulExp tMUL UnaryExp{
    $$ = new TreeNodeMulExp();
    $$->MulExp = shared_ptr<TreeNodeMulExp>($1);
    $$->UnaryExp = shared_ptr<TreeNodeUnaryExp>($3);
    $$->op = OP_MUL;
  }
	| MulExp tDIV UnaryExp{
    $$ = new TreeNodeMulExp();
    $$->MulExp = shared_ptr<TreeNodeMulExp>($1);
    $$->UnaryExp = shared_ptr<TreeNodeUnaryExp>($3);
    $$->op = OP_DIV;
  }
	| MulExp tMOD UnaryExp{
    $$ = new TreeNodeMulExp();
    $$->MulExp = shared_ptr<TreeNodeMulExp>($1);
    $$->UnaryExp = shared_ptr<TreeNodeUnaryExp>($3);
    $$->op = OP_MOD;
  }
	;

// 加减表达式 AddExp -> MulExp 
//                 | AddExp ('+' | '−') MulExp
AddExp:MulExp{
    $$ = new TreeNodeAddExp();
    $$->AddExp = nullptr;
    $$->MulExp = shared_ptr<TreeNodeMulExp>($1);
  }
	| AddExp tADD MulExp{
    $$ = new TreeNodeAddExp();
    $$->AddExp = shared_ptr<TreeNodeAddExp>($1);
    $$->MulExp = shared_ptr<TreeNodeMulExp>($3);
    $$->op = OP_PLUS;
  }
	| AddExp tSUB MulExp{
    $$ = new TreeNodeAddExp();
    $$->AddExp = shared_ptr<TreeNodeAddExp>($1);
    $$->MulExp = shared_ptr<TreeNodeMulExp>($3);
    $$->op = OP_MINUS;
  }
	;

// 关系表达式 RelExp -> AddExp 
//                 | RelExp ('<' | '>' | '<=' | '>=') AddExp
RelExp:AddExp{
    $$ = new TreeNodeRelExp();
    $$->RelExp = nullptr;
    $$->AddExp = shared_ptr<TreeNodeAddExp>($1);
  }
	| RelExp tLT AddExp{
    $$ = new TreeNodeRelExp();
    $$->RelExp = shared_ptr<TreeNodeRelExp>($1);
    $$->AddExp = shared_ptr<TreeNodeAddExp>($3);
    $$->op = OP_LT;
  }
	| RelExp tGT AddExp{
    $$ = new TreeNodeRelExp();
    $$->RelExp = shared_ptr<TreeNodeRelExp>($1);
    $$->AddExp = shared_ptr<TreeNodeAddExp>($3);
    $$->op = OP_GT;
  }
	| RelExp tLTE AddExp{
    $$ = new TreeNodeRelExp();
    $$->RelExp = shared_ptr<TreeNodeRelExp>($1);
    $$->AddExp = shared_ptr<TreeNodeAddExp>($3);
    $$->op = OP_LTE;
  }
	| RelExp tGTE AddExp{
    $$ = new TreeNodeRelExp();
    $$->RelExp = shared_ptr<TreeNodeRelExp>($1);
    $$->AddExp = shared_ptr<TreeNodeAddExp>($3);
    $$->op = OP_GTE;
  }
	;

// 相等性表达式 EqExp -> RelExp 
//                  | EqExp ('==' | '!=') RelExp
EqExp:RelExp{
    $$ = new TreeNodeEqExp();
    $$->EqExp = nullptr;
    $$->RelExp = shared_ptr<TreeNodeRelExp>($1);
  }
	| EqExp tEQ RelExp{
    $$ = new TreeNodeEqExp();
    $$->EqExp = shared_ptr<TreeNodeEqExp>($1);
    $$->RelExp = shared_ptr<TreeNodeRelExp>($3);
    $$->op = OP_EQ;
  }
	| EqExp tNEQ RelExp{
    $$ = new TreeNodeEqExp();
    $$->EqExp = shared_ptr<TreeNodeEqExp>($1);
    $$->RelExp = shared_ptr<TreeNodeRelExp>($3);
    $$->op = OP_NEQ;
  }
	;

// 逻辑与表达式 LAndExp -> EqExp | LAndExp '&&' EqExp
LAndExp:EqExp {
    $$ = new TreeNodeLAndExp();
    $$->LAndExp = nullptr;
    $$->EqExp = shared_ptr<TreeNodeEqExp>($1);
  }
	| LAndExp tAND EqExp{
    $$ = new TreeNodeLAndExp();
    $$->LAndExp = shared_ptr<TreeNodeLAndExp>($1);
    $$->EqExp = shared_ptr<TreeNodeEqExp>($3);
    $$->op = OP_AND;
  }
	;

// 逻辑或表达式 LOrExp -> LAndExp | LOrExp '||' LAndExp
LOrExp:LAndExp{
    $$ = new TreeNodeLOrExp();
    $$->LOrExp = nullptr;
    $$->LAndExp = shared_ptr<TreeNodeLAndExp>($1);
  }
	| LOrExp tOR LAndExp{
    $$ = new TreeNodeLOrExp();
    $$->LOrExp = shared_ptr<TreeNodeLOrExp>($1);
    $$->LAndExp = shared_ptr<TreeNodeLAndExp>($3);
    $$->op = OP_OR;
  }
	;

// 常量表达式 ConstExp -> AddExp
ConstExp:AddExp{
    $$ = new TreeNodeConstExp();
    $$->AddExp = shared_ptr<TreeNodeAddExp>($1);
  }
	;

%%

void yy::parser::error (const location_type& l,
                          const string& m)
{
    driver.error(l, m);
}