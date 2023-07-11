// A Bison parser, made by GNU Bison 3.7.6.

// Skeleton implementation for Bison LALR(1) parsers in C++

// Copyright (C) 2002-2015, 2018-2021 Free Software Foundation, Inc.

// This program is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.

// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.

// You should have received a copy of the GNU General Public License
// along with this program.  If not, see <https://www.gnu.org/licenses/>.

// As a special exception, you may create a larger work that contains
// part or all of the Bison parser skeleton and distribute that work
// under terms of your choice, so long as that work isn't itself a
// parser generator using the skeleton or a modified version thereof
// as a parser skeleton.  Alternatively, if you modify or redistribute
// the parser skeleton itself, you may (at your option) remove this
// special exception, which will cause the skeleton and the resulting
// Bison output files to be licensed under the GNU General Public
// License without this special exception.

// This special exception was added by the Free Software Foundation in
// version 2.2 of Bison.

// DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
// especially those whose name start with YY_ or yy_.  They are
// private implementation details that can be changed or removed.





#include "parser.tab.hh"


// Unqualified %code blocks.
#line 18 "parser.y"

  #include "fdriver.hh"
  #define yylex driver.lexer.yylex
  const bool checkParser = false;

#line 52 "parser.tab.cc"


#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> // FIXME: INFRINGES ON USER NAME SPACE.
#   define YY_(msgid) dgettext ("bison-runtime", msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(msgid) msgid
# endif
#endif


// Whether we are compiled with exception support.
#ifndef YY_EXCEPTIONS
# if defined __GNUC__ && !defined __EXCEPTIONS
#  define YY_EXCEPTIONS 0
# else
#  define YY_EXCEPTIONS 1
# endif
#endif

#define YYRHSLOC(Rhs, K) ((Rhs)[K].location)
/* YYLLOC_DEFAULT -- Set CURRENT to span from RHS[1] to RHS[N].
   If N is 0, then set CURRENT to the empty location which ends
   the previous symbol: RHS[0] (always defined).  */

# ifndef YYLLOC_DEFAULT
#  define YYLLOC_DEFAULT(Current, Rhs, N)                               \
    do                                                                  \
      if (N)                                                            \
        {                                                               \
          (Current).begin  = YYRHSLOC (Rhs, 1).begin;                   \
          (Current).end    = YYRHSLOC (Rhs, N).end;                     \
        }                                                               \
      else                                                              \
        {                                                               \
          (Current).begin = (Current).end = YYRHSLOC (Rhs, 0).end;      \
        }                                                               \
    while (false)
# endif


// Enable debugging if requested.
#if YYDEBUG

// A pseudo ostream that takes yydebug_ into account.
# define YYCDEBUG if (yydebug_) (*yycdebug_)

# define YY_SYMBOL_PRINT(Title, Symbol)         \
  do {                                          \
    if (yydebug_)                               \
    {                                           \
      *yycdebug_ << Title << ' ';               \
      yy_print_ (*yycdebug_, Symbol);           \
      *yycdebug_ << '\n';                       \
    }                                           \
  } while (false)

# define YY_REDUCE_PRINT(Rule)          \
  do {                                  \
    if (yydebug_)                       \
      yy_reduce_print_ (Rule);          \
  } while (false)

# define YY_STACK_PRINT()               \
  do {                                  \
    if (yydebug_)                       \
      yy_stack_print_ ();                \
  } while (false)

#else // !YYDEBUG

# define YYCDEBUG if (false) std::cerr
# define YY_SYMBOL_PRINT(Title, Symbol)  YY_USE (Symbol)
# define YY_REDUCE_PRINT(Rule)           static_cast<void> (0)
# define YY_STACK_PRINT()                static_cast<void> (0)

#endif // !YYDEBUG

#define yyerrok         (yyerrstatus_ = 0)
#define yyclearin       (yyla.clear ())

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYRECOVERING()  (!!yyerrstatus_)

namespace yy {
#line 144 "parser.tab.cc"

  /// Build a parser object.
  parser::parser (fdriver& driver_yyarg)
#if YYDEBUG
    : yydebug_ (false),
      yycdebug_ (&std::cerr),
#else
    :
#endif
      driver (driver_yyarg)
  {}

  parser::~parser ()
  {}

  parser::syntax_error::~syntax_error () YY_NOEXCEPT YY_NOTHROW
  {}

  /*---------------.
  | symbol kinds.  |
  `---------------*/



  // by_state.
  parser::by_state::by_state () YY_NOEXCEPT
    : state (empty_state)
  {}

  parser::by_state::by_state (const by_state& that) YY_NOEXCEPT
    : state (that.state)
  {}

  void
  parser::by_state::clear () YY_NOEXCEPT
  {
    state = empty_state;
  }

  void
  parser::by_state::move (by_state& that)
  {
    state = that.state;
    that.clear ();
  }

  parser::by_state::by_state (state_type s) YY_NOEXCEPT
    : state (s)
  {}

  parser::symbol_kind_type
  parser::by_state::kind () const YY_NOEXCEPT
  {
    if (state == empty_state)
      return symbol_kind::S_YYEMPTY;
    else
      return YY_CAST (symbol_kind_type, yystos_[+state]);
  }

  parser::stack_symbol_type::stack_symbol_type ()
  {}

  parser::stack_symbol_type::stack_symbol_type (YY_RVREF (stack_symbol_type) that)
    : super_type (YY_MOVE (that.state), YY_MOVE (that.location))
  {
    switch (that.kind ())
    {
      case symbol_kind::S_AddExp: // AddExp
        value.YY_MOVE_OR_COPY< TreeNodeAddExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.YY_MOVE_OR_COPY< TreeNodeArrayConstExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.YY_MOVE_OR_COPY< TreeNodeArrayExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.YY_MOVE_OR_COPY< TreeNodeAssignStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Block: // Block
        value.YY_MOVE_OR_COPY< TreeNodeBlock* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.YY_MOVE_OR_COPY< TreeNodeBlockItem* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.YY_MOVE_OR_COPY< TreeNodeBlockItemList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.YY_MOVE_OR_COPY< TreeNodeBreakStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Callee: // Callee
        value.YY_MOVE_OR_COPY< TreeNodeCallee* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Cond: // Cond
        value.YY_MOVE_OR_COPY< TreeNodeCond* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.YY_MOVE_OR_COPY< TreeNodeConstDecl* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.YY_MOVE_OR_COPY< TreeNodeConstDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.YY_MOVE_OR_COPY< TreeNodeConstDefList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.YY_MOVE_OR_COPY< TreeNodeConstExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.YY_MOVE_OR_COPY< TreeNodeConstInitVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.YY_MOVE_OR_COPY< TreeNodeConstInitValList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.YY_MOVE_OR_COPY< TreeNodeContinueStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.YY_MOVE_OR_COPY< TreeNodeDeclDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.YY_MOVE_OR_COPY< TreeNodeEqExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Exp: // Exp
        value.YY_MOVE_OR_COPY< TreeNodeExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncRParams: // FuncRParams
        value.YY_MOVE_OR_COPY< TreeNodeExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.YY_MOVE_OR_COPY< TreeNodeFuncDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.YY_MOVE_OR_COPY< TreeNodeFuncFParam* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.YY_MOVE_OR_COPY< TreeNodeFuncFParamList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.YY_MOVE_OR_COPY< TreeNodeIfStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.YY_MOVE_OR_COPY< TreeNodeInitVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.YY_MOVE_OR_COPY< TreeNodeInitValList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.YY_MOVE_OR_COPY< TreeNodeLAndExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.YY_MOVE_OR_COPY< TreeNodeLOrExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LVal: // LVal
        value.YY_MOVE_OR_COPY< TreeNodeLVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.YY_MOVE_OR_COPY< TreeNodeMulExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Number: // Number
        value.YY_MOVE_OR_COPY< TreeNodeNumber* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.YY_MOVE_OR_COPY< TreeNodeParamArrayExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.YY_MOVE_OR_COPY< TreeNodePrimaryExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.YY_MOVE_OR_COPY< TreeNodeRelExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.YY_MOVE_OR_COPY< TreeNodeReturnStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.YY_MOVE_OR_COPY< TreeNodeStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.YY_MOVE_OR_COPY< TreeNodeTopLevel* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.YY_MOVE_OR_COPY< TreeNodeUnaryExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.YY_MOVE_OR_COPY< TreeNodeVarDecl* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.YY_MOVE_OR_COPY< TreeNodeVarDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.YY_MOVE_OR_COPY< TreeNodeVarDefList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.YY_MOVE_OR_COPY< TreeNodeWhileStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.YY_MOVE_OR_COPY< int > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.YY_MOVE_OR_COPY< string > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_DefType: // DefType
        value.YY_MOVE_OR_COPY< typeFunc > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.YY_MOVE_OR_COPY< unaryop > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

#if 201103L <= YY_CPLUSPLUS
    // that is emptied.
    that.state = empty_state;
#endif
  }

  parser::stack_symbol_type::stack_symbol_type (state_type s, YY_MOVE_REF (symbol_type) that)
    : super_type (s, YY_MOVE (that.location))
  {
    switch (that.kind ())
    {
      case symbol_kind::S_AddExp: // AddExp
        value.move< TreeNodeAddExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.move< TreeNodeArrayConstExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.move< TreeNodeArrayExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.move< TreeNodeAssignStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Block: // Block
        value.move< TreeNodeBlock* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.move< TreeNodeBlockItem* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.move< TreeNodeBlockItemList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.move< TreeNodeBreakStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Callee: // Callee
        value.move< TreeNodeCallee* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Cond: // Cond
        value.move< TreeNodeCond* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.move< TreeNodeConstDecl* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.move< TreeNodeConstDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.move< TreeNodeConstDefList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.move< TreeNodeConstExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.move< TreeNodeConstInitVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.move< TreeNodeConstInitValList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.move< TreeNodeContinueStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.move< TreeNodeDeclDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.move< TreeNodeEqExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Exp: // Exp
        value.move< TreeNodeExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncRParams: // FuncRParams
        value.move< TreeNodeExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.move< TreeNodeFuncDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.move< TreeNodeFuncFParam* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.move< TreeNodeFuncFParamList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.move< TreeNodeIfStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.move< TreeNodeInitVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.move< TreeNodeInitValList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.move< TreeNodeLAndExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.move< TreeNodeLOrExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LVal: // LVal
        value.move< TreeNodeLVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.move< TreeNodeMulExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Number: // Number
        value.move< TreeNodeNumber* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.move< TreeNodeParamArrayExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.move< TreeNodePrimaryExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.move< TreeNodeRelExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.move< TreeNodeReturnStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.move< TreeNodeStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.move< TreeNodeTopLevel* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.move< TreeNodeUnaryExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.move< TreeNodeVarDecl* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.move< TreeNodeVarDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.move< TreeNodeVarDefList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.move< TreeNodeWhileStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.move< int > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.move< string > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_DefType: // DefType
        value.move< typeFunc > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.move< unaryop > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

    // that is emptied.
    that.kind_ = symbol_kind::S_YYEMPTY;
  }

#if YY_CPLUSPLUS < 201103L
  parser::stack_symbol_type&
  parser::stack_symbol_type::operator= (const stack_symbol_type& that)
  {
    state = that.state;
    switch (that.kind ())
    {
      case symbol_kind::S_AddExp: // AddExp
        value.copy< TreeNodeAddExp* > (that.value);
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.copy< TreeNodeArrayConstExpList* > (that.value);
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.copy< TreeNodeArrayExpList* > (that.value);
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.copy< TreeNodeAssignStmt* > (that.value);
        break;

      case symbol_kind::S_Block: // Block
        value.copy< TreeNodeBlock* > (that.value);
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.copy< TreeNodeBlockItem* > (that.value);
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.copy< TreeNodeBlockItemList* > (that.value);
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.copy< TreeNodeBreakStmt* > (that.value);
        break;

      case symbol_kind::S_Callee: // Callee
        value.copy< TreeNodeCallee* > (that.value);
        break;

      case symbol_kind::S_Cond: // Cond
        value.copy< TreeNodeCond* > (that.value);
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.copy< TreeNodeConstDecl* > (that.value);
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.copy< TreeNodeConstDef* > (that.value);
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.copy< TreeNodeConstDefList* > (that.value);
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.copy< TreeNodeConstExp* > (that.value);
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.copy< TreeNodeConstInitVal* > (that.value);
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.copy< TreeNodeConstInitValList* > (that.value);
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.copy< TreeNodeContinueStmt* > (that.value);
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.copy< TreeNodeDeclDef* > (that.value);
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.copy< TreeNodeEqExp* > (that.value);
        break;

      case symbol_kind::S_Exp: // Exp
        value.copy< TreeNodeExp* > (that.value);
        break;

      case symbol_kind::S_FuncRParams: // FuncRParams
        value.copy< TreeNodeExpList* > (that.value);
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.copy< TreeNodeFuncDef* > (that.value);
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.copy< TreeNodeFuncFParam* > (that.value);
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.copy< TreeNodeFuncFParamList* > (that.value);
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.copy< TreeNodeIfStmt* > (that.value);
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.copy< TreeNodeInitVal* > (that.value);
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.copy< TreeNodeInitValList* > (that.value);
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.copy< TreeNodeLAndExp* > (that.value);
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.copy< TreeNodeLOrExp* > (that.value);
        break;

      case symbol_kind::S_LVal: // LVal
        value.copy< TreeNodeLVal* > (that.value);
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.copy< TreeNodeMulExp* > (that.value);
        break;

      case symbol_kind::S_Number: // Number
        value.copy< TreeNodeNumber* > (that.value);
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.copy< TreeNodeParamArrayExpList* > (that.value);
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.copy< TreeNodePrimaryExp* > (that.value);
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.copy< TreeNodeRelExp* > (that.value);
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.copy< TreeNodeReturnStmt* > (that.value);
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.copy< TreeNodeStmt* > (that.value);
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.copy< TreeNodeTopLevel* > (that.value);
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.copy< TreeNodeUnaryExp* > (that.value);
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.copy< TreeNodeVarDecl* > (that.value);
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.copy< TreeNodeVarDef* > (that.value);
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.copy< TreeNodeVarDefList* > (that.value);
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.copy< TreeNodeWhileStmt* > (that.value);
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.copy< int > (that.value);
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.copy< string > (that.value);
        break;

      case symbol_kind::S_DefType: // DefType
        value.copy< typeFunc > (that.value);
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.copy< unaryop > (that.value);
        break;

      default:
        break;
    }

    location = that.location;
    return *this;
  }

  parser::stack_symbol_type&
  parser::stack_symbol_type::operator= (stack_symbol_type& that)
  {
    state = that.state;
    switch (that.kind ())
    {
      case symbol_kind::S_AddExp: // AddExp
        value.move< TreeNodeAddExp* > (that.value);
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.move< TreeNodeArrayConstExpList* > (that.value);
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.move< TreeNodeArrayExpList* > (that.value);
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.move< TreeNodeAssignStmt* > (that.value);
        break;

      case symbol_kind::S_Block: // Block
        value.move< TreeNodeBlock* > (that.value);
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.move< TreeNodeBlockItem* > (that.value);
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.move< TreeNodeBlockItemList* > (that.value);
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.move< TreeNodeBreakStmt* > (that.value);
        break;

      case symbol_kind::S_Callee: // Callee
        value.move< TreeNodeCallee* > (that.value);
        break;

      case symbol_kind::S_Cond: // Cond
        value.move< TreeNodeCond* > (that.value);
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.move< TreeNodeConstDecl* > (that.value);
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.move< TreeNodeConstDef* > (that.value);
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.move< TreeNodeConstDefList* > (that.value);
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.move< TreeNodeConstExp* > (that.value);
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.move< TreeNodeConstInitVal* > (that.value);
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.move< TreeNodeConstInitValList* > (that.value);
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.move< TreeNodeContinueStmt* > (that.value);
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.move< TreeNodeDeclDef* > (that.value);
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.move< TreeNodeEqExp* > (that.value);
        break;

      case symbol_kind::S_Exp: // Exp
        value.move< TreeNodeExp* > (that.value);
        break;

      case symbol_kind::S_FuncRParams: // FuncRParams
        value.move< TreeNodeExpList* > (that.value);
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.move< TreeNodeFuncDef* > (that.value);
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.move< TreeNodeFuncFParam* > (that.value);
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.move< TreeNodeFuncFParamList* > (that.value);
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.move< TreeNodeIfStmt* > (that.value);
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.move< TreeNodeInitVal* > (that.value);
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.move< TreeNodeInitValList* > (that.value);
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.move< TreeNodeLAndExp* > (that.value);
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.move< TreeNodeLOrExp* > (that.value);
        break;

      case symbol_kind::S_LVal: // LVal
        value.move< TreeNodeLVal* > (that.value);
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.move< TreeNodeMulExp* > (that.value);
        break;

      case symbol_kind::S_Number: // Number
        value.move< TreeNodeNumber* > (that.value);
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.move< TreeNodeParamArrayExpList* > (that.value);
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.move< TreeNodePrimaryExp* > (that.value);
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.move< TreeNodeRelExp* > (that.value);
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.move< TreeNodeReturnStmt* > (that.value);
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.move< TreeNodeStmt* > (that.value);
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.move< TreeNodeTopLevel* > (that.value);
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.move< TreeNodeUnaryExp* > (that.value);
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.move< TreeNodeVarDecl* > (that.value);
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.move< TreeNodeVarDef* > (that.value);
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.move< TreeNodeVarDefList* > (that.value);
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.move< TreeNodeWhileStmt* > (that.value);
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.move< int > (that.value);
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.move< string > (that.value);
        break;

      case symbol_kind::S_DefType: // DefType
        value.move< typeFunc > (that.value);
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.move< unaryop > (that.value);
        break;

      default:
        break;
    }

    location = that.location;
    // that is emptied.
    that.state = empty_state;
    return *this;
  }
#endif

  template <typename Base>
  void
  parser::yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const
  {
    if (yymsg)
      YY_SYMBOL_PRINT (yymsg, yysym);
  }

#if YYDEBUG
  template <typename Base>
  void
  parser::yy_print_ (std::ostream& yyo, const basic_symbol<Base>& yysym) const
  {
    std::ostream& yyoutput = yyo;
    YY_USE (yyoutput);
    if (yysym.empty ())
      yyo << "empty symbol";
    else
      {
        symbol_kind_type yykind = yysym.kind ();
        yyo << (yykind < YYNTOKENS ? "token" : "nterm")
            << ' ' << yysym.name () << " ("
            << yysym.location << ": ";
        YY_USE (yykind);
        yyo << ')';
      }
  }
#endif

  void
  parser::yypush_ (const char* m, YY_MOVE_REF (stack_symbol_type) sym)
  {
    if (m)
      YY_SYMBOL_PRINT (m, sym);
    yystack_.push (YY_MOVE (sym));
  }

  void
  parser::yypush_ (const char* m, state_type s, YY_MOVE_REF (symbol_type) sym)
  {
#if 201103L <= YY_CPLUSPLUS
    yypush_ (m, stack_symbol_type (s, std::move (sym)));
#else
    stack_symbol_type ss (s, sym);
    yypush_ (m, ss);
#endif
  }

  void
  parser::yypop_ (int n)
  {
    yystack_.pop (n);
  }

#if YYDEBUG
  std::ostream&
  parser::debug_stream () const
  {
    return *yycdebug_;
  }

  void
  parser::set_debug_stream (std::ostream& o)
  {
    yycdebug_ = &o;
  }


  parser::debug_level_type
  parser::debug_level () const
  {
    return yydebug_;
  }

  void
  parser::set_debug_level (debug_level_type l)
  {
    yydebug_ = l;
  }
#endif // YYDEBUG

  parser::state_type
  parser::yy_lr_goto_state_ (state_type yystate, int yysym)
  {
    int yyr = yypgoto_[yysym - YYNTOKENS] + yystate;
    if (0 <= yyr && yyr <= yylast_ && yycheck_[yyr] == yystate)
      return yytable_[yyr];
    else
      return yydefgoto_[yysym - YYNTOKENS];
  }

  bool
  parser::yy_pact_value_is_default_ (int yyvalue)
  {
    return yyvalue == yypact_ninf_;
  }

  bool
  parser::yy_table_value_is_error_ (int yyvalue)
  {
    return yyvalue == yytable_ninf_;
  }

  int
  parser::operator() ()
  {
    return parse ();
  }

  int
  parser::parse ()
  {
    int yyn;
    /// Length of the RHS of the rule being reduced.
    int yylen = 0;

    // Error handling.
    int yynerrs_ = 0;
    int yyerrstatus_ = 0;

    /// The lookahead symbol.
    symbol_type yyla;

    /// The locations where the error started and ended.
    stack_symbol_type yyerror_range[3];

    /// The return value of parse ().
    int yyresult;

#if YY_EXCEPTIONS
    try
#endif // YY_EXCEPTIONS
      {
    YYCDEBUG << "Starting parse\n";


    // User initialization code.
#line 13 "parser.y"
{
    yyla.location.begin.filename = yyla.location.end.filename = &driver.file;
}

#line 1161 "parser.tab.cc"


    /* Initialize the stack.  The initial state will be set in
       yynewstate, since the latter expects the semantical and the
       location values to have been already stored, initialize these
       stacks with a primary value.  */
    yystack_.clear ();
    yypush_ (YY_NULLPTR, 0, YY_MOVE (yyla));

  /*-----------------------------------------------.
  | yynewstate -- push a new symbol on the stack.  |
  `-----------------------------------------------*/
  yynewstate:
    YYCDEBUG << "Entering state " << int (yystack_[0].state) << '\n';
    YY_STACK_PRINT ();

    // Accept?
    if (yystack_[0].state == yyfinal_)
      YYACCEPT;

    goto yybackup;


  /*-----------.
  | yybackup.  |
  `-----------*/
  yybackup:
    // Try to take a decision without lookahead.
    yyn = yypact_[+yystack_[0].state];
    if (yy_pact_value_is_default_ (yyn))
      goto yydefault;

    // Read a lookahead token.
    if (yyla.empty ())
      {
        YYCDEBUG << "Reading a token\n";
#if YY_EXCEPTIONS
        try
#endif // YY_EXCEPTIONS
          {
            symbol_type yylookahead (yylex (driver));
            yyla.move (yylookahead);
          }
#if YY_EXCEPTIONS
        catch (const syntax_error& yyexc)
          {
            YYCDEBUG << "Caught exception: " << yyexc.what() << '\n';
            error (yyexc);
            goto yyerrlab1;
          }
#endif // YY_EXCEPTIONS
      }
    YY_SYMBOL_PRINT ("Next token is", yyla);

    if (yyla.kind () == symbol_kind::S_YYerror)
    {
      // The scanner already issued an error message, process directly
      // to error recovery.  But do not keep the error token as
      // lookahead, it is too special and may lead us to an endless
      // loop in error recovery. */
      yyla.kind_ = symbol_kind::S_YYUNDEF;
      goto yyerrlab1;
    }

    /* If the proper action on seeing token YYLA.TYPE is to reduce or
       to detect an error, take that action.  */
    yyn += yyla.kind ();
    if (yyn < 0 || yylast_ < yyn || yycheck_[yyn] != yyla.kind ())
      {
        goto yydefault;
      }

    // Reduce or error.
    yyn = yytable_[yyn];
    if (yyn <= 0)
      {
        if (yy_table_value_is_error_ (yyn))
          goto yyerrlab;
        yyn = -yyn;
        goto yyreduce;
      }

    // Count tokens shifted since error; after three, turn off error status.
    if (yyerrstatus_)
      --yyerrstatus_;

    // Shift the lookahead token.
    yypush_ ("Shifting", state_type (yyn), YY_MOVE (yyla));
    goto yynewstate;


  /*-----------------------------------------------------------.
  | yydefault -- do the default action for the current state.  |
  `-----------------------------------------------------------*/
  yydefault:
    yyn = yydefact_[+yystack_[0].state];
    if (yyn == 0)
      goto yyerrlab;
    goto yyreduce;


  /*-----------------------------.
  | yyreduce -- do a reduction.  |
  `-----------------------------*/
  yyreduce:
    yylen = yyr2_[yyn];
    {
      stack_symbol_type yylhs;
      yylhs.state = yy_lr_goto_state_ (yystack_[yylen].state, yyr1_[yyn]);
      /* Variants are always initialized to an empty instance of the
         correct type. The default '$$ = $1' action is NOT applied
         when using variants.  */
      switch (yyr1_[yyn])
    {
      case symbol_kind::S_AddExp: // AddExp
        yylhs.value.emplace< TreeNodeAddExp* > ();
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        yylhs.value.emplace< TreeNodeArrayConstExpList* > ();
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        yylhs.value.emplace< TreeNodeArrayExpList* > ();
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        yylhs.value.emplace< TreeNodeAssignStmt* > ();
        break;

      case symbol_kind::S_Block: // Block
        yylhs.value.emplace< TreeNodeBlock* > ();
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        yylhs.value.emplace< TreeNodeBlockItem* > ();
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        yylhs.value.emplace< TreeNodeBlockItemList* > ();
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        yylhs.value.emplace< TreeNodeBreakStmt* > ();
        break;

      case symbol_kind::S_Callee: // Callee
        yylhs.value.emplace< TreeNodeCallee* > ();
        break;

      case symbol_kind::S_Cond: // Cond
        yylhs.value.emplace< TreeNodeCond* > ();
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        yylhs.value.emplace< TreeNodeConstDecl* > ();
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        yylhs.value.emplace< TreeNodeConstDef* > ();
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        yylhs.value.emplace< TreeNodeConstDefList* > ();
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        yylhs.value.emplace< TreeNodeConstExp* > ();
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        yylhs.value.emplace< TreeNodeConstInitVal* > ();
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        yylhs.value.emplace< TreeNodeConstInitValList* > ();
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        yylhs.value.emplace< TreeNodeContinueStmt* > ();
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        yylhs.value.emplace< TreeNodeDeclDef* > ();
        break;

      case symbol_kind::S_EqExp: // EqExp
        yylhs.value.emplace< TreeNodeEqExp* > ();
        break;

      case symbol_kind::S_Exp: // Exp
        yylhs.value.emplace< TreeNodeExp* > ();
        break;

      case symbol_kind::S_FuncRParams: // FuncRParams
        yylhs.value.emplace< TreeNodeExpList* > ();
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        yylhs.value.emplace< TreeNodeFuncDef* > ();
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        yylhs.value.emplace< TreeNodeFuncFParam* > ();
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        yylhs.value.emplace< TreeNodeFuncFParamList* > ();
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        yylhs.value.emplace< TreeNodeIfStmt* > ();
        break;

      case symbol_kind::S_InitVal: // InitVal
        yylhs.value.emplace< TreeNodeInitVal* > ();
        break;

      case symbol_kind::S_InitValList: // InitValList
        yylhs.value.emplace< TreeNodeInitValList* > ();
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        yylhs.value.emplace< TreeNodeLAndExp* > ();
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        yylhs.value.emplace< TreeNodeLOrExp* > ();
        break;

      case symbol_kind::S_LVal: // LVal
        yylhs.value.emplace< TreeNodeLVal* > ();
        break;

      case symbol_kind::S_MulExp: // MulExp
        yylhs.value.emplace< TreeNodeMulExp* > ();
        break;

      case symbol_kind::S_Number: // Number
        yylhs.value.emplace< TreeNodeNumber* > ();
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        yylhs.value.emplace< TreeNodeParamArrayExpList* > ();
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        yylhs.value.emplace< TreeNodePrimaryExp* > ();
        break;

      case symbol_kind::S_RelExp: // RelExp
        yylhs.value.emplace< TreeNodeRelExp* > ();
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        yylhs.value.emplace< TreeNodeReturnStmt* > ();
        break;

      case symbol_kind::S_Stmt: // Stmt
        yylhs.value.emplace< TreeNodeStmt* > ();
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        yylhs.value.emplace< TreeNodeTopLevel* > ();
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        yylhs.value.emplace< TreeNodeUnaryExp* > ();
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        yylhs.value.emplace< TreeNodeVarDecl* > ();
        break;

      case symbol_kind::S_VarDef: // VarDef
        yylhs.value.emplace< TreeNodeVarDef* > ();
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        yylhs.value.emplace< TreeNodeVarDefList* > ();
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        yylhs.value.emplace< TreeNodeWhileStmt* > ();
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        yylhs.value.emplace< int > ();
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        yylhs.value.emplace< string > ();
        break;

      case symbol_kind::S_DefType: // DefType
        yylhs.value.emplace< typeFunc > ();
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        yylhs.value.emplace< unaryop > ();
        break;

      default:
        break;
    }


      // Default location.
      {
        stack_type::slice range (yystack_, yylen);
        YYLLOC_DEFAULT (yylhs.location, range, yylen);
        yyerror_range[1].location = yylhs.location;
      }

      // Perform the reduction.
      YY_REDUCE_PRINT (yyn);
#if YY_EXCEPTIONS
      try
#endif // YY_EXCEPTIONS
        {
          switch (yyn)
            {
  case 2: // TopLevel: TopLevel DeclDef
#line 110 "parser.y"
                         {
		yystack_[1].value.as < TreeNodeTopLevel* > ()->DeclDefList.push_back(shared_ptr<TreeNodeDeclDef>(yystack_[0].value.as < TreeNodeDeclDef* > ()));
		yylhs.value.as < TreeNodeTopLevel* > () = yystack_[1].value.as < TreeNodeTopLevel* > ();
	}
#line 1490 "parser.tab.cc"
    break;

  case 3: // TopLevel: DeclDef
#line 114 "parser.y"
                 {
		yylhs.value.as < TreeNodeTopLevel* > () = new TreeNodeTopLevel();
		yylhs.value.as < TreeNodeTopLevel* > ()->DeclDefList.push_back(shared_ptr<TreeNodeDeclDef>(yystack_[0].value.as < TreeNodeDeclDef* > ()));
	}
#line 1499 "parser.tab.cc"
    break;

  case 4: // TopLevel: TopLevel tEND
#line 118 "parser.y"
                  { 
    auto printer = new TreeNodePrinter; 
    driver.root  =  yystack_[1].value.as < TreeNodeTopLevel* > ();
    return 0;
  }
#line 1509 "parser.tab.cc"
    break;

  case 5: // DeclDef: ConstDecl
#line 127 "parser.y"
                 {
    yylhs.value.as < TreeNodeDeclDef* > () = new TreeNodeDeclDef();
    yylhs.value.as < TreeNodeDeclDef* > ()->ConstDecl = shared_ptr<TreeNodeConstDecl>(yystack_[0].value.as < TreeNodeConstDecl* > ());
    yylhs.value.as < TreeNodeDeclDef* > ()->VarDecl = nullptr;
    yylhs.value.as < TreeNodeDeclDef* > ()->FuncDef = nullptr;
    if(checkParser) cout << "ConstDecl" << endl;
    }
#line 1521 "parser.tab.cc"
    break;

  case 6: // DeclDef: VarDecl
#line 134 "parser.y"
                 {
    yylhs.value.as < TreeNodeDeclDef* > () = new TreeNodeDeclDef();
    yylhs.value.as < TreeNodeDeclDef* > ()->ConstDecl = nullptr;
    yylhs.value.as < TreeNodeDeclDef* > ()->VarDecl = shared_ptr<TreeNodeVarDecl>(yystack_[0].value.as < TreeNodeVarDecl* > ());
    yylhs.value.as < TreeNodeDeclDef* > ()->FuncDef = nullptr;
    if(checkParser) cout << "VarDecl" << endl;
  }
#line 1533 "parser.tab.cc"
    break;

  case 7: // DeclDef: FuncDef
#line 141 "parser.y"
                 {
    yylhs.value.as < TreeNodeDeclDef* > () = new TreeNodeDeclDef();
    yylhs.value.as < TreeNodeDeclDef* > ()->ConstDecl = nullptr;
    yylhs.value.as < TreeNodeDeclDef* > ()->VarDecl = nullptr;
    yylhs.value.as < TreeNodeDeclDef* > ()->FuncDef = shared_ptr<TreeNodeFuncDef>(yystack_[0].value.as < TreeNodeFuncDef* > ());
    if(checkParser) cout << "FuncDef" << endl;
  }
#line 1545 "parser.tab.cc"
    break;

  case 8: // ConstDecl: tCONST DefType ConstDefList tSEMI
#line 152 "parser.y"
                                           {
    yylhs.value.as < TreeNodeConstDecl* > () = new TreeNodeConstDecl();
    yylhs.value.as < TreeNodeConstDecl* > ()->ConstDefList.swap(yystack_[1].value.as < TreeNodeConstDefList* > ()->list);
    yylhs.value.as < TreeNodeConstDecl* > ()->type = TYPE_INT;
    if(checkParser) cout << "ConstDecl" << endl;
  }
#line 1556 "parser.tab.cc"
    break;

  case 9: // ConstDefList: ConstDefList tCOMMA ConstDef
#line 161 "parser.y"
                                         {
    yystack_[2].value.as < TreeNodeConstDefList* > ()->list.push_back(shared_ptr<TreeNodeConstDef>(yystack_[0].value.as < TreeNodeConstDef* > ()));
    yylhs.value.as < TreeNodeConstDefList* > () = yystack_[2].value.as < TreeNodeConstDefList* > ();
  }
#line 1565 "parser.tab.cc"
    break;

  case 10: // ConstDefList: ConstDef
#line 165 "parser.y"
                  {
    yylhs.value.as < TreeNodeConstDefList* > () = new TreeNodeConstDefList();
    yylhs.value.as < TreeNodeConstDefList* > ()->list.push_back(shared_ptr<TreeNodeConstDef>(yystack_[0].value.as < TreeNodeConstDef* > ()));
  }
#line 1574 "parser.tab.cc"
    break;

  case 11: // ConstDef: tIDENT ArrayConstExpList tASSIN ConstInitVal
#line 173 "parser.y"
                                                     {
    yylhs.value.as < TreeNodeConstDef* > () = new TreeNodeConstDef();
    yylhs.value.as < TreeNodeConstDef* > ()->ArrayConstExpList.swap(yystack_[2].value.as < TreeNodeArrayConstExpList* > ()->list);
    yylhs.value.as < TreeNodeConstDef* > ()->id = yystack_[3].value.as < string > ();
    yylhs.value.as < TreeNodeConstDef* > ()->ConstInitVal = shared_ptr<TreeNodeConstInitVal>(yystack_[0].value.as < TreeNodeConstInitVal* > ());
  }
#line 1585 "parser.tab.cc"
    break;

  case 12: // ArrayConstExpList: ArrayConstExpList tLBRACK ConstExp tRBRACK
#line 182 "parser.y"
                                                            {
    yystack_[3].value.as < TreeNodeArrayConstExpList* > ()->list.push_back(shared_ptr<TreeNodeConstExp>(yystack_[1].value.as < TreeNodeConstExp* > ()));
    yylhs.value.as < TreeNodeArrayConstExpList* > () = yystack_[3].value.as < TreeNodeArrayConstExpList* > ();
  }
#line 1594 "parser.tab.cc"
    break;

  case 13: // ArrayConstExpList: %empty
#line 186 "parser.y"
         {
    yylhs.value.as < TreeNodeArrayConstExpList* > () = new TreeNodeArrayConstExpList();
  }
#line 1602 "parser.tab.cc"
    break;

  case 14: // ConstInitVal: ConstExp
#line 192 "parser.y"
                     {
    yylhs.value.as < TreeNodeConstInitVal* > () = new TreeNodeConstInitVal();
    yylhs.value.as < TreeNodeConstInitVal* > ()->ConstExp = shared_ptr<TreeNodeConstExp>(yystack_[0].value.as < TreeNodeConstExp* > ());
  }
#line 1611 "parser.tab.cc"
    break;

  case 15: // ConstInitVal: tLBRACE ConstInitValList tRBRACE
#line 196 "parser.y"
                                          {
    yylhs.value.as < TreeNodeConstInitVal* > () = new TreeNodeConstInitVal();
    yylhs.value.as < TreeNodeConstInitVal* > ()->ConstExp = nullptr;
    yylhs.value.as < TreeNodeConstInitVal* > ()->ConstInitValList.swap(yystack_[1].value.as < TreeNodeConstInitValList* > ()->list);
  }
#line 1621 "parser.tab.cc"
    break;

  case 16: // ConstInitVal: tLBRACE tRBRACE
#line 201 "parser.y"
                         {
    yylhs.value.as < TreeNodeConstInitVal* > () = new TreeNodeConstInitVal();
    yylhs.value.as < TreeNodeConstInitVal* > ()->ConstExp = nullptr;
  }
#line 1630 "parser.tab.cc"
    break;

  case 17: // ConstInitValList: ConstInitValList tCOMMA ConstInitVal
#line 208 "parser.y"
                                                     {
    yystack_[2].value.as < TreeNodeConstInitValList* > ()->list.push_back(shared_ptr<TreeNodeConstInitVal>(yystack_[0].value.as < TreeNodeConstInitVal* > ()));
    yylhs.value.as < TreeNodeConstInitValList* > () = yystack_[2].value.as < TreeNodeConstInitValList* > ();
  }
#line 1639 "parser.tab.cc"
    break;

  case 18: // ConstInitValList: ConstInitVal
#line 212 "parser.y"
                       {
    yylhs.value.as < TreeNodeConstInitValList* > () = new TreeNodeConstInitValList();
    yylhs.value.as < TreeNodeConstInitValList* > ()->list.push_back(shared_ptr<TreeNodeConstInitVal>(yystack_[0].value.as < TreeNodeConstInitVal* > ()));
  }
#line 1648 "parser.tab.cc"
    break;

  case 19: // VarDecl: DefType VarDefList tSEMI
#line 220 "parser.y"
                                {
    yylhs.value.as < TreeNodeVarDecl* > () = new TreeNodeVarDecl();
    yylhs.value.as < TreeNodeVarDecl* > ()->VarDefList.swap(yystack_[1].value.as < TreeNodeVarDefList* > ()->list);
    yylhs.value.as < TreeNodeVarDecl* > ()->type = TYPE_INT;
    if(checkParser) cout << "VarDecl" << endl;
  }
#line 1659 "parser.tab.cc"
    break;

  case 20: // VarDefList: VarDefList tCOMMA VarDef
#line 229 "parser.y"
                                   {
    yystack_[2].value.as < TreeNodeVarDefList* > ()->list.push_back(shared_ptr<TreeNodeVarDef>(yystack_[0].value.as < TreeNodeVarDef* > ()));
    yylhs.value.as < TreeNodeVarDefList* > () = yystack_[2].value.as < TreeNodeVarDefList* > ();
  }
#line 1668 "parser.tab.cc"
    break;

  case 21: // VarDefList: VarDef
#line 233 "parser.y"
                {
    yylhs.value.as < TreeNodeVarDefList* > () = new TreeNodeVarDefList();
    yylhs.value.as < TreeNodeVarDefList* > ()->list.push_back(shared_ptr<TreeNodeVarDef>(yystack_[0].value.as < TreeNodeVarDef* > ()));
  }
#line 1677 "parser.tab.cc"
    break;

  case 22: // VarDef: tIDENT ArrayConstExpList
#line 240 "parser.y"
                               {
    yylhs.value.as < TreeNodeVarDef* > () = new TreeNodeVarDef();
    yylhs.value.as < TreeNodeVarDef* > ()->id = yystack_[1].value.as < string > ();
    yylhs.value.as < TreeNodeVarDef* > ()->ArrayConstExpList.swap(yystack_[0].value.as < TreeNodeArrayConstExpList* > ()->list);
    yylhs.value.as < TreeNodeVarDef* > ()->InitVal = nullptr;
  }
#line 1688 "parser.tab.cc"
    break;

  case 23: // VarDef: tIDENT ArrayConstExpList tASSIN InitVal
#line 246 "parser.y"
                                                 {
    yylhs.value.as < TreeNodeVarDef* > () = new TreeNodeVarDef();
    yylhs.value.as < TreeNodeVarDef* > ()->id = yystack_[3].value.as < string > ();
    yylhs.value.as < TreeNodeVarDef* > ()->ArrayConstExpList.swap(yystack_[2].value.as < TreeNodeArrayConstExpList* > ()->list);
    yylhs.value.as < TreeNodeVarDef* > ()->InitVal = shared_ptr<TreeNodeInitVal>(yystack_[0].value.as < TreeNodeInitVal* > ());
  }
#line 1699 "parser.tab.cc"
    break;

  case 24: // InitVal: Exp
#line 256 "parser.y"
           {
    yylhs.value.as < TreeNodeInitVal* > () = new TreeNodeInitVal();
    yylhs.value.as < TreeNodeInitVal* > ()->Exp = shared_ptr<TreeNodeExp>(yystack_[0].value.as < TreeNodeExp* > ());
  }
#line 1708 "parser.tab.cc"
    break;

  case 25: // InitVal: tLBRACE tRBRACE
#line 260 "parser.y"
                         {
    yylhs.value.as < TreeNodeInitVal* > () = new TreeNodeInitVal();
    yylhs.value.as < TreeNodeInitVal* > ()->Exp = nullptr;
  }
#line 1717 "parser.tab.cc"
    break;

  case 26: // InitVal: tLBRACE InitValList tRBRACE
#line 264 "parser.y"
                                     {
    yylhs.value.as < TreeNodeInitVal* > () = new TreeNodeInitVal();
    yylhs.value.as < TreeNodeInitVal* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeInitVal* > ()->InitValList.swap(yystack_[1].value.as < TreeNodeInitValList* > ()->list);
  }
#line 1727 "parser.tab.cc"
    break;

  case 27: // InitValList: InitValList tCOMMA InitVal
#line 272 "parser.y"
                                      {
    yystack_[2].value.as < TreeNodeInitValList* > ()->list.push_back(shared_ptr<TreeNodeInitVal>(yystack_[0].value.as < TreeNodeInitVal* > ()));
    yylhs.value.as < TreeNodeInitValList* > () = yystack_[2].value.as < TreeNodeInitValList* > ();
  }
#line 1736 "parser.tab.cc"
    break;

  case 28: // InitValList: InitVal
#line 276 "parser.y"
           {
    yylhs.value.as < TreeNodeInitValList* > () = new TreeNodeInitValList();
    yylhs.value.as < TreeNodeInitValList* > ()->list.push_back(shared_ptr<TreeNodeInitVal>(yystack_[0].value.as < TreeNodeInitVal* > ()));
  }
#line 1745 "parser.tab.cc"
    break;

  case 29: // FuncDef: DefType tIDENT tLPAREN tRPAREN Block
#line 283 "parser.y"
                                            {
    yylhs.value.as < TreeNodeFuncDef* > () = new TreeNodeFuncDef();
    yylhs.value.as < TreeNodeFuncDef* > ()->type = yystack_[4].value.as < typeFunc > ();
    yylhs.value.as < TreeNodeFuncDef* > ()->id = yystack_[3].value.as < string > ();
    yylhs.value.as < TreeNodeFuncDef* > ()->Block = shared_ptr<TreeNodeBlock>(yystack_[0].value.as < TreeNodeBlock* > ());
    if(checkParser) cout << "FuncDef without params" << endl;
  }
#line 1757 "parser.tab.cc"
    break;

  case 30: // FuncDef: DefType tIDENT tLPAREN FuncFParamList tRPAREN Block
#line 290 "parser.y"
                                                             {
    yylhs.value.as < TreeNodeFuncDef* > () = new TreeNodeFuncDef();
    yylhs.value.as < TreeNodeFuncDef* > ()->type = yystack_[5].value.as < typeFunc > ();
    yylhs.value.as < TreeNodeFuncDef* > ()->id = yystack_[4].value.as < string > ();
    yylhs.value.as < TreeNodeFuncDef* > ()->FuncFParamList.swap(yystack_[2].value.as < TreeNodeFuncFParamList* > ()->list);
    yylhs.value.as < TreeNodeFuncDef* > ()->Block = shared_ptr<TreeNodeBlock>(yystack_[0].value.as < TreeNodeBlock* > ());
    if(checkParser) cout << "FuncDef with params" << endl;
  }
#line 1770 "parser.tab.cc"
    break;

  case 31: // DefType: tVOID
#line 301 "parser.y"
             {yylhs.value.as < typeFunc > () = TYPE_VOID;}
#line 1776 "parser.tab.cc"
    break;

  case 32: // DefType: tINT
#line 302 "parser.y"
              {yylhs.value.as < typeFunc > () = TYPE_INT;}
#line 1782 "parser.tab.cc"
    break;

  case 33: // FuncFParamList: FuncFParamList tCOMMA FuncFParam
#line 306 "parser.y"
                                               {
    yystack_[2].value.as < TreeNodeFuncFParamList* > ()->list.push_back(shared_ptr<TreeNodeFuncFParam>(yystack_[0].value.as < TreeNodeFuncFParam* > ()));
    yylhs.value.as < TreeNodeFuncFParamList* > () = yystack_[2].value.as < TreeNodeFuncFParamList* > ();
  }
#line 1791 "parser.tab.cc"
    break;

  case 34: // FuncFParamList: FuncFParam
#line 310 "parser.y"
                    {
    yylhs.value.as < TreeNodeFuncFParamList* > () = new TreeNodeFuncFParamList();
    yylhs.value.as < TreeNodeFuncFParamList* > ()->list.push_back(shared_ptr<TreeNodeFuncFParam>(yystack_[0].value.as < TreeNodeFuncFParam* > ()));
  }
#line 1800 "parser.tab.cc"
    break;

  case 35: // FuncFParam: DefType tIDENT ParamArrayExpList
#line 317 "parser.y"
                                           {
    yylhs.value.as < TreeNodeFuncFParam* > () = new TreeNodeFuncFParam();
    yylhs.value.as < TreeNodeFuncFParam* > ()->type = TYPE_INT;
    yylhs.value.as < TreeNodeFuncFParam* > ()->isarray = 1;
    yylhs.value.as < TreeNodeFuncFParam* > ()->id = yystack_[1].value.as < string > ();
    yylhs.value.as < TreeNodeFuncFParam* > ()->ParamArrayExpList.swap(yystack_[0].value.as < TreeNodeParamArrayExpList* > ()->list);
  }
#line 1812 "parser.tab.cc"
    break;

  case 36: // FuncFParam: DefType tIDENT
#line 324 "parser.y"
                        {
    yylhs.value.as < TreeNodeFuncFParam* > () = new TreeNodeFuncFParam();
    yylhs.value.as < TreeNodeFuncFParam* > ()->type = TYPE_INT;
    yylhs.value.as < TreeNodeFuncFParam* > ()->id = yystack_[0].value.as < string > ();
    yylhs.value.as < TreeNodeFuncFParam* > ()->isarray = 0;
  }
#line 1823 "parser.tab.cc"
    break;

  case 37: // ParamArrayExpList: ParamArrayExpList tLBRACK Exp tRBRACK
#line 333 "parser.y"
                                                       {
    yystack_[3].value.as < TreeNodeParamArrayExpList* > ()->list.push_back(shared_ptr<TreeNodeExp>(yystack_[1].value.as < TreeNodeExp* > ()));
    yylhs.value.as < TreeNodeParamArrayExpList* > () = yystack_[3].value.as < TreeNodeParamArrayExpList* > ();
  }
#line 1832 "parser.tab.cc"
    break;

  case 38: // ParamArrayExpList: tARRAY
#line 337 "parser.y"
                {
    yylhs.value.as < TreeNodeParamArrayExpList* > () = new TreeNodeParamArrayExpList();
  }
#line 1840 "parser.tab.cc"
    break;

  case 39: // Block: tLBRACE BlockItemList tRBRACE
#line 343 "parser.y"
                                   {
    yylhs.value.as < TreeNodeBlock* > () = new TreeNodeBlock();
    yylhs.value.as < TreeNodeBlock* > ()->BlockItemList.swap(yystack_[1].value.as < TreeNodeBlockItemList* > ()->list);
    if(checkParser) cout << "Block" << endl;
  }
#line 1850 "parser.tab.cc"
    break;

  case 40: // BlockItemList: BlockItemList BlockItem
#line 351 "parser.y"
                                     {
    yystack_[1].value.as < TreeNodeBlockItemList* > ()->list.push_back(shared_ptr<TreeNodeBlockItem>(yystack_[0].value.as < TreeNodeBlockItem* > ()));
    yylhs.value.as < TreeNodeBlockItemList* > () = yystack_[1].value.as < TreeNodeBlockItemList* > ();
  }
#line 1859 "parser.tab.cc"
    break;

  case 41: // BlockItemList: %empty
#line 355 "parser.y"
         {
    yylhs.value.as < TreeNodeBlockItemList* > () = new TreeNodeBlockItemList();
  }
#line 1867 "parser.tab.cc"
    break;

  case 42: // BlockItem: ConstDecl
#line 362 "parser.y"
                   {
    yylhs.value.as < TreeNodeBlockItem* > () = new TreeNodeBlockItem();
    yylhs.value.as < TreeNodeBlockItem* > ()->ConstDecl = shared_ptr<TreeNodeConstDecl>(yystack_[0].value.as < TreeNodeConstDecl* > ());
    yylhs.value.as < TreeNodeBlockItem* > ()->VarDecl = nullptr;
    yylhs.value.as < TreeNodeBlockItem* > ()->Stmt = nullptr;
  }
#line 1878 "parser.tab.cc"
    break;

  case 43: // BlockItem: VarDecl
#line 368 "parser.y"
                 {
    yylhs.value.as < TreeNodeBlockItem* > () = new TreeNodeBlockItem();
    yylhs.value.as < TreeNodeBlockItem* > ()->ConstDecl = nullptr;
    yylhs.value.as < TreeNodeBlockItem* > ()->VarDecl = shared_ptr<TreeNodeVarDecl>(yystack_[0].value.as < TreeNodeVarDecl* > ());
    yylhs.value.as < TreeNodeBlockItem* > ()->Stmt = nullptr;
  }
#line 1889 "parser.tab.cc"
    break;

  case 44: // BlockItem: Stmt
#line 374 "parser.y"
              {
    yylhs.value.as < TreeNodeBlockItem* > () = new TreeNodeBlockItem();
    yylhs.value.as < TreeNodeBlockItem* > ()->ConstDecl = nullptr;
    yylhs.value.as < TreeNodeBlockItem* > ()->VarDecl = nullptr;
    yylhs.value.as < TreeNodeBlockItem* > ()->Stmt = shared_ptr<TreeNodeStmt>(yystack_[0].value.as < TreeNodeStmt* > ());
  }
#line 1900 "parser.tab.cc"
    break;

  case 45: // Stmt: AssignStmt
#line 383 "parser.y"
               {
    // AssignStmt -> LVal ‘=’ Exp ‘；’
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = shared_ptr<TreeNodeAssignStmt>(yystack_[0].value.as < TreeNodeAssignStmt* > ());
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 1917 "parser.tab.cc"
    break;

  case 46: // Stmt: Exp tSEMI
#line 395 "parser.y"
                   {
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = shared_ptr<TreeNodeExp>(yystack_[1].value.as < TreeNodeExp* > ());
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 1933 "parser.tab.cc"
    break;

  case 47: // Stmt: tSEMI
#line 406 "parser.y"
               {
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 1949 "parser.tab.cc"
    break;

  case 48: // Stmt: Block
#line 417 "parser.y"
               {
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = shared_ptr<TreeNodeBlock>(yystack_[0].value.as < TreeNodeBlock* > ());
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 1965 "parser.tab.cc"
    break;

  case 49: // Stmt: IfStmt
#line 428 "parser.y"
                {
    // IfStmt -> 'if' '( Cond ')' Stmt [ 'else' Stmt ]
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = shared_ptr<TreeNodeIfStmt>(yystack_[0].value.as < TreeNodeIfStmt* > ());
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 1982 "parser.tab.cc"
    break;

  case 50: // Stmt: WhileStmt
#line 440 "parser.y"
                   {
    // WhileStmt -> 'while' '(' Cond ')' Stmt
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = shared_ptr<TreeNodeWhileStmt>(yystack_[0].value.as < TreeNodeWhileStmt* > ());
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 1999 "parser.tab.cc"
    break;

  case 51: // Stmt: BreakStmt
#line 452 "parser.y"
                   {
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = shared_ptr<TreeNodeBreakStmt>(yystack_[0].value.as < TreeNodeBreakStmt* > ());
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 2015 "parser.tab.cc"
    break;

  case 52: // Stmt: ContinueStmt
#line 463 "parser.y"
                      {
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = shared_ptr<TreeNodeContinueStmt>(yystack_[0].value.as < TreeNodeContinueStmt* > ());
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = nullptr;
  }
#line 2031 "parser.tab.cc"
    break;

  case 53: // Stmt: ReturnStmt
#line 474 "parser.y"
                    {
    yylhs.value.as < TreeNodeStmt* > () = new TreeNodeStmt();
    yylhs.value.as < TreeNodeStmt* > ()->BreakStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ContinueStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->AssignStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->Block = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->IfStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->WhileStmt = nullptr;
    yylhs.value.as < TreeNodeStmt* > ()->ReturnStmt = shared_ptr<TreeNodeReturnStmt>(yystack_[0].value.as < TreeNodeReturnStmt* > ());
  }
#line 2047 "parser.tab.cc"
    break;

  case 54: // BreakStmt: tBREAK tSEMI
#line 488 "parser.y"
                      {
    yylhs.value.as < TreeNodeBreakStmt* > () = new TreeNodeBreakStmt();
    if(checkParser) cout << "BreakStmt" << endl;
  }
#line 2056 "parser.tab.cc"
    break;

  case 55: // ContinueStmt: tCONTINUE tSEMI
#line 495 "parser.y"
                            {
    yylhs.value.as < TreeNodeContinueStmt* > () = new TreeNodeContinueStmt();
    if(checkParser) cout << "ContinueStmt" << endl;
  }
#line 2065 "parser.tab.cc"
    break;

  case 56: // AssignStmt: LVal tASSIN Exp tSEMI
#line 502 "parser.y"
                                {
    yylhs.value.as < TreeNodeAssignStmt* > () = new TreeNodeAssignStmt();
    yylhs.value.as < TreeNodeAssignStmt* > ()->LVal = shared_ptr<TreeNodeLVal>(yystack_[3].value.as < TreeNodeLVal* > ());
    yylhs.value.as < TreeNodeAssignStmt* > ()->Exp = shared_ptr<TreeNodeExp>(yystack_[1].value.as < TreeNodeExp* > ());
    if(checkParser) cout << "AssignStmt" << endl;
  }
#line 2076 "parser.tab.cc"
    break;

  case 57: // IfStmt: tIF tLPAREN Cond tRPAREN Stmt
#line 511 "parser.y"
                                    {
    yylhs.value.as < TreeNodeIfStmt* > () = new TreeNodeIfStmt();
    yylhs.value.as < TreeNodeIfStmt* > ()->Cond = shared_ptr<TreeNodeCond>(yystack_[2].value.as < TreeNodeCond* > ());
    yylhs.value.as < TreeNodeIfStmt* > ()->ifStmt = shared_ptr<TreeNodeStmt>(yystack_[0].value.as < TreeNodeStmt* > ());
    if(checkParser) cout << "IfStmt" << endl;
  }
#line 2087 "parser.tab.cc"
    break;

  case 58: // IfStmt: tIF tLPAREN Cond tRPAREN Stmt tELSE Stmt
#line 517 "parser.y"
                                                  {
    yylhs.value.as < TreeNodeIfStmt* > () = new TreeNodeIfStmt();
    yylhs.value.as < TreeNodeIfStmt* > ()->Cond = shared_ptr<TreeNodeCond>(yystack_[4].value.as < TreeNodeCond* > ());
    yylhs.value.as < TreeNodeIfStmt* > ()->ifStmt = shared_ptr<TreeNodeStmt>(yystack_[2].value.as < TreeNodeStmt* > ());
    yylhs.value.as < TreeNodeIfStmt* > ()->elseStmt = shared_ptr<TreeNodeStmt>(yystack_[0].value.as < TreeNodeStmt* > ());
    if(checkParser) cout << "IfElseStmt" << endl;
  }
#line 2099 "parser.tab.cc"
    break;

  case 59: // WhileStmt: tWHILE tLPAREN Cond tRPAREN Stmt
#line 527 "parser.y"
                                          {
    yylhs.value.as < TreeNodeWhileStmt* > () = new TreeNodeWhileStmt();
    yylhs.value.as < TreeNodeWhileStmt* > ()->Cond = shared_ptr<TreeNodeCond>(yystack_[2].value.as < TreeNodeCond* > ());
    yylhs.value.as < TreeNodeWhileStmt* > ()->Stmt = shared_ptr<TreeNodeStmt>(yystack_[0].value.as < TreeNodeStmt* > ());
    if(checkParser) cout << "WhileStmt" << endl;
  }
#line 2110 "parser.tab.cc"
    break;

  case 60: // ReturnStmt: tRETURN Exp tSEMI
#line 536 "parser.y"
                            {
    yylhs.value.as < TreeNodeReturnStmt* > () = new TreeNodeReturnStmt();
    yylhs.value.as < TreeNodeReturnStmt* > ()->Exp = shared_ptr<TreeNodeExp>(yystack_[1].value.as < TreeNodeExp* > ());
    if(checkParser) cout << "ReturnStmt" << endl;
  }
#line 2120 "parser.tab.cc"
    break;

  case 61: // ReturnStmt: tRETURN tSEMI
#line 541 "parser.y"
                       {
    yylhs.value.as < TreeNodeReturnStmt* > () = new TreeNodeReturnStmt();
    yylhs.value.as < TreeNodeReturnStmt* > ()->Exp = nullptr;
    if(checkParser) cout << "ReturnStmt" << endl;
  }
#line 2130 "parser.tab.cc"
    break;

  case 62: // Exp: AddExp
#line 549 "parser.y"
          {
    yylhs.value.as < TreeNodeExp* > () = new TreeNodeExp();
    yylhs.value.as < TreeNodeExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[0].value.as < TreeNodeAddExp* > ());
    if(checkParser) cout << "Exp" << endl;
  }
#line 2140 "parser.tab.cc"
    break;

  case 63: // Cond: LOrExp
#line 557 "parser.y"
           {
    yylhs.value.as < TreeNodeCond* > () = new TreeNodeCond();
    yylhs.value.as < TreeNodeCond* > ()->LOrExp = shared_ptr<TreeNodeLOrExp>(yystack_[0].value.as < TreeNodeLOrExp* > ());
  }
#line 2149 "parser.tab.cc"
    break;

  case 64: // LVal: tIDENT ArrayExpList
#line 564 "parser.y"
                        {
    yylhs.value.as < TreeNodeLVal* > () = new TreeNodeLVal();
    yylhs.value.as < TreeNodeLVal* > ()->id = yystack_[1].value.as < string > ();
    yylhs.value.as < TreeNodeLVal* > ()->ArrayExpList.swap(yystack_[0].value.as < TreeNodeArrayExpList* > ()->list);
  }
#line 2159 "parser.tab.cc"
    break;

  case 65: // ArrayExpList: ArrayExpList tLBRACK Exp tRBRACK
#line 572 "parser.y"
                                             {
    yystack_[3].value.as < TreeNodeArrayExpList* > ()->list.push_back(shared_ptr<TreeNodeExp>(yystack_[1].value.as < TreeNodeExp* > ()));
    yylhs.value.as < TreeNodeArrayExpList* > () = yystack_[3].value.as < TreeNodeArrayExpList* > ();
  }
#line 2168 "parser.tab.cc"
    break;

  case 66: // ArrayExpList: %empty
#line 576 "parser.y"
         {
    yylhs.value.as < TreeNodeArrayExpList* > () = new TreeNodeArrayExpList();
  }
#line 2176 "parser.tab.cc"
    break;

  case 67: // PrimaryExp: tLPAREN Exp tRPAREN
#line 582 "parser.y"
                              {
    yylhs.value.as < TreeNodePrimaryExp* > () = new TreeNodePrimaryExp();
    yylhs.value.as < TreeNodePrimaryExp* > ()->Exp = shared_ptr<TreeNodeExp>(yystack_[1].value.as < TreeNodeExp* > ());
    yylhs.value.as < TreeNodePrimaryExp* > ()->LVal = nullptr;
    yylhs.value.as < TreeNodePrimaryExp* > ()->Number = nullptr;
  }
#line 2187 "parser.tab.cc"
    break;

  case 68: // PrimaryExp: LVal
#line 588 "parser.y"
              {
    yylhs.value.as < TreeNodePrimaryExp* > () = new TreeNodePrimaryExp();
    yylhs.value.as < TreeNodePrimaryExp* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodePrimaryExp* > ()->LVal = shared_ptr<TreeNodeLVal>(yystack_[0].value.as < TreeNodeLVal* > ());
    yylhs.value.as < TreeNodePrimaryExp* > ()->Number = nullptr;
  }
#line 2198 "parser.tab.cc"
    break;

  case 69: // PrimaryExp: Number
#line 594 "parser.y"
                {
    yylhs.value.as < TreeNodePrimaryExp* > () = new TreeNodePrimaryExp();
    yylhs.value.as < TreeNodePrimaryExp* > ()->Exp = nullptr;
    yylhs.value.as < TreeNodePrimaryExp* > ()->LVal = nullptr;
    yylhs.value.as < TreeNodePrimaryExp* > ()->Number = shared_ptr<TreeNodeNumber>(yystack_[0].value.as < TreeNodeNumber* > ());
  }
#line 2209 "parser.tab.cc"
    break;

  case 70: // Number: tNUMBER
#line 603 "parser.y"
              {
    yylhs.value.as < TreeNodeNumber* > () = new TreeNodeNumber();
    yylhs.value.as < TreeNodeNumber* > ()->num = yystack_[0].value.as < int > ();
    if(checkParser) cout << "Number" << endl;
  }
#line 2219 "parser.tab.cc"
    break;

  case 71: // UnaryExp: PrimaryExp
#line 613 "parser.y"
                   {
    yylhs.value.as < TreeNodeUnaryExp* > () = new TreeNodeUnaryExp();
    yylhs.value.as < TreeNodeUnaryExp* > ()->op = SYSY_POS;
    yylhs.value.as < TreeNodeUnaryExp* > ()->PrimaryExp = shared_ptr<TreeNodePrimaryExp>(yystack_[0].value.as < TreeNodePrimaryExp* > ());
    yylhs.value.as < TreeNodeUnaryExp* > ()->Callee = nullptr;
    yylhs.value.as < TreeNodeUnaryExp* > ()->UnaryExp = nullptr;
  }
#line 2231 "parser.tab.cc"
    break;

  case 72: // UnaryExp: Callee
#line 620 "parser.y"
                {
    yylhs.value.as < TreeNodeUnaryExp* > () = new TreeNodeUnaryExp();
    yylhs.value.as < TreeNodeUnaryExp* > ()->op = SYSY_POS;
    yylhs.value.as < TreeNodeUnaryExp* > ()->PrimaryExp = nullptr;
    yylhs.value.as < TreeNodeUnaryExp* > ()->Callee = shared_ptr<TreeNodeCallee>(yystack_[0].value.as < TreeNodeCallee* > ());
    yylhs.value.as < TreeNodeUnaryExp* > ()->UnaryExp = nullptr;
  }
#line 2243 "parser.tab.cc"
    break;

  case 73: // UnaryExp: UnaryOp UnaryExp
#line 627 "parser.y"
                          {
    yylhs.value.as < TreeNodeUnaryExp* > () = new TreeNodeUnaryExp();
    yylhs.value.as < TreeNodeUnaryExp* > ()->op = yystack_[1].value.as < unaryop > ();
    yylhs.value.as < TreeNodeUnaryExp* > ()->PrimaryExp = nullptr;
    yylhs.value.as < TreeNodeUnaryExp* > ()->Callee = nullptr;
    yylhs.value.as < TreeNodeUnaryExp* > ()->UnaryExp = shared_ptr<TreeNodeUnaryExp>(yystack_[0].value.as < TreeNodeUnaryExp* > ());
  }
#line 2255 "parser.tab.cc"
    break;

  case 74: // Callee: tIDENT tLPAREN FuncRParams tRPAREN
#line 637 "parser.y"
                                         {
    yylhs.value.as < TreeNodeCallee* > () = new TreeNodeCallee();
    yylhs.value.as < TreeNodeCallee* > ()->id = yystack_[3].value.as < string > ();
    yylhs.value.as < TreeNodeCallee* > ()->ExpList.swap(yystack_[1].value.as < TreeNodeExpList* > ()->list);
  }
#line 2265 "parser.tab.cc"
    break;

  case 75: // Callee: tIDENT tLPAREN tRPAREN
#line 642 "parser.y"
                           {
    yylhs.value.as < TreeNodeCallee* > () = new TreeNodeCallee();
    yylhs.value.as < TreeNodeCallee* > ()->id = yystack_[2].value.as < string > ();
  }
#line 2274 "parser.tab.cc"
    break;

  case 76: // UnaryOp: tADD
#line 649 "parser.y"
             {yylhs.value.as < unaryop > () = SYSY_POS;}
#line 2280 "parser.tab.cc"
    break;

  case 77: // UnaryOp: tSUB
#line 650 "parser.y"
              {yylhs.value.as < unaryop > () = SYSY_NEG;}
#line 2286 "parser.tab.cc"
    break;

  case 78: // UnaryOp: tNOT
#line 651 "parser.y"
              {yylhs.value.as < unaryop > () = SYSY_NOT;}
#line 2292 "parser.tab.cc"
    break;

  case 79: // FuncRParams: FuncRParams tCOMMA Exp
#line 655 "parser.y"
                                  {
    yystack_[2].value.as < TreeNodeExpList* > ()->list.push_back(shared_ptr<TreeNodeExp>(yystack_[0].value.as < TreeNodeExp* > ()));
    yylhs.value.as < TreeNodeExpList* > () = yystack_[2].value.as < TreeNodeExpList* > ();
    }
#line 2301 "parser.tab.cc"
    break;

  case 80: // FuncRParams: Exp
#line 659 "parser.y"
            {
    yylhs.value.as < TreeNodeExpList* > () = new TreeNodeExpList();
    yylhs.value.as < TreeNodeExpList* > ()->list.push_back(shared_ptr<TreeNodeExp>(yystack_[0].value.as < TreeNodeExp* > ()));
  }
#line 2310 "parser.tab.cc"
    break;

  case 81: // MulExp: UnaryExp
#line 667 "parser.y"
               {
    yylhs.value.as < TreeNodeMulExp* > () = new TreeNodeMulExp();
    yylhs.value.as < TreeNodeMulExp* > ()->MulExp = nullptr;
    yylhs.value.as < TreeNodeMulExp* > ()->UnaryExp = shared_ptr<TreeNodeUnaryExp>(yystack_[0].value.as < TreeNodeUnaryExp* > ());
  }
#line 2320 "parser.tab.cc"
    break;

  case 82: // MulExp: MulExp tMUL UnaryExp
#line 672 "parser.y"
                              {
    yylhs.value.as < TreeNodeMulExp* > () = new TreeNodeMulExp();
    yylhs.value.as < TreeNodeMulExp* > ()->MulExp = shared_ptr<TreeNodeMulExp>(yystack_[2].value.as < TreeNodeMulExp* > ());
    yylhs.value.as < TreeNodeMulExp* > ()->UnaryExp = shared_ptr<TreeNodeUnaryExp>(yystack_[0].value.as < TreeNodeUnaryExp* > ());
    yylhs.value.as < TreeNodeMulExp* > ()->op = SYSY_MUL;
  }
#line 2331 "parser.tab.cc"
    break;

  case 83: // MulExp: MulExp tDIV UnaryExp
#line 678 "parser.y"
                              {
    yylhs.value.as < TreeNodeMulExp* > () = new TreeNodeMulExp();
    yylhs.value.as < TreeNodeMulExp* > ()->MulExp = shared_ptr<TreeNodeMulExp>(yystack_[2].value.as < TreeNodeMulExp* > ());
    yylhs.value.as < TreeNodeMulExp* > ()->UnaryExp = shared_ptr<TreeNodeUnaryExp>(yystack_[0].value.as < TreeNodeUnaryExp* > ());
    yylhs.value.as < TreeNodeMulExp* > ()->op = SYSY_DIV;
  }
#line 2342 "parser.tab.cc"
    break;

  case 84: // MulExp: MulExp tMOD UnaryExp
#line 684 "parser.y"
                              {
    yylhs.value.as < TreeNodeMulExp* > () = new TreeNodeMulExp();
    yylhs.value.as < TreeNodeMulExp* > ()->MulExp = shared_ptr<TreeNodeMulExp>(yystack_[2].value.as < TreeNodeMulExp* > ());
    yylhs.value.as < TreeNodeMulExp* > ()->UnaryExp = shared_ptr<TreeNodeUnaryExp>(yystack_[0].value.as < TreeNodeUnaryExp* > ());
    yylhs.value.as < TreeNodeMulExp* > ()->op = SYSY_MOD;
  }
#line 2353 "parser.tab.cc"
    break;

  case 85: // AddExp: MulExp
#line 694 "parser.y"
             {
    yylhs.value.as < TreeNodeAddExp* > () = new TreeNodeAddExp();
    yylhs.value.as < TreeNodeAddExp* > ()->AddExp = nullptr;
    yylhs.value.as < TreeNodeAddExp* > ()->MulExp = shared_ptr<TreeNodeMulExp>(yystack_[0].value.as < TreeNodeMulExp* > ());
  }
#line 2363 "parser.tab.cc"
    break;

  case 86: // AddExp: AddExp tADD MulExp
#line 699 "parser.y"
                            {
    yylhs.value.as < TreeNodeAddExp* > () = new TreeNodeAddExp();
    yylhs.value.as < TreeNodeAddExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[2].value.as < TreeNodeAddExp* > ());
    yylhs.value.as < TreeNodeAddExp* > ()->MulExp = shared_ptr<TreeNodeMulExp>(yystack_[0].value.as < TreeNodeMulExp* > ());
    yylhs.value.as < TreeNodeAddExp* > ()->op = SYSY_PLUS;
  }
#line 2374 "parser.tab.cc"
    break;

  case 87: // AddExp: AddExp tSUB MulExp
#line 705 "parser.y"
                            {
    yylhs.value.as < TreeNodeAddExp* > () = new TreeNodeAddExp();
    yylhs.value.as < TreeNodeAddExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[2].value.as < TreeNodeAddExp* > ());
    yylhs.value.as < TreeNodeAddExp* > ()->MulExp = shared_ptr<TreeNodeMulExp>(yystack_[0].value.as < TreeNodeMulExp* > ());
    yylhs.value.as < TreeNodeAddExp* > ()->op = SYSY_MINUS;
  }
#line 2385 "parser.tab.cc"
    break;

  case 88: // RelExp: AddExp
#line 715 "parser.y"
             {
    yylhs.value.as < TreeNodeRelExp* > () = new TreeNodeRelExp();
    yylhs.value.as < TreeNodeRelExp* > ()->RelExp = nullptr;
    yylhs.value.as < TreeNodeRelExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[0].value.as < TreeNodeAddExp* > ());
  }
#line 2395 "parser.tab.cc"
    break;

  case 89: // RelExp: RelExp tLT AddExp
#line 720 "parser.y"
                           {
    yylhs.value.as < TreeNodeRelExp* > () = new TreeNodeRelExp();
    yylhs.value.as < TreeNodeRelExp* > ()->RelExp = shared_ptr<TreeNodeRelExp>(yystack_[2].value.as < TreeNodeRelExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[0].value.as < TreeNodeAddExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->op = SYSY_LT;
  }
#line 2406 "parser.tab.cc"
    break;

  case 90: // RelExp: RelExp tGT AddExp
#line 726 "parser.y"
                           {
    yylhs.value.as < TreeNodeRelExp* > () = new TreeNodeRelExp();
    yylhs.value.as < TreeNodeRelExp* > ()->RelExp = shared_ptr<TreeNodeRelExp>(yystack_[2].value.as < TreeNodeRelExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[0].value.as < TreeNodeAddExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->op = SYSY_GT;
  }
#line 2417 "parser.tab.cc"
    break;

  case 91: // RelExp: RelExp tLTE AddExp
#line 732 "parser.y"
                            {
    yylhs.value.as < TreeNodeRelExp* > () = new TreeNodeRelExp();
    yylhs.value.as < TreeNodeRelExp* > ()->RelExp = shared_ptr<TreeNodeRelExp>(yystack_[2].value.as < TreeNodeRelExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[0].value.as < TreeNodeAddExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->op = SYSY_LTE;
  }
#line 2428 "parser.tab.cc"
    break;

  case 92: // RelExp: RelExp tGTE AddExp
#line 738 "parser.y"
                            {
    yylhs.value.as < TreeNodeRelExp* > () = new TreeNodeRelExp();
    yylhs.value.as < TreeNodeRelExp* > ()->RelExp = shared_ptr<TreeNodeRelExp>(yystack_[2].value.as < TreeNodeRelExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[0].value.as < TreeNodeAddExp* > ());
    yylhs.value.as < TreeNodeRelExp* > ()->op = SYSY_GTE;
  }
#line 2439 "parser.tab.cc"
    break;

  case 93: // EqExp: RelExp
#line 748 "parser.y"
            {
    yylhs.value.as < TreeNodeEqExp* > () = new TreeNodeEqExp();
    yylhs.value.as < TreeNodeEqExp* > ()->EqExp = nullptr;
    yylhs.value.as < TreeNodeEqExp* > ()->RelExp = shared_ptr<TreeNodeRelExp>(yystack_[0].value.as < TreeNodeRelExp* > ());
  }
#line 2449 "parser.tab.cc"
    break;

  case 94: // EqExp: EqExp tEQ RelExp
#line 753 "parser.y"
                          {
    yylhs.value.as < TreeNodeEqExp* > () = new TreeNodeEqExp();
    yylhs.value.as < TreeNodeEqExp* > ()->EqExp = shared_ptr<TreeNodeEqExp>(yystack_[2].value.as < TreeNodeEqExp* > ());
    yylhs.value.as < TreeNodeEqExp* > ()->RelExp = shared_ptr<TreeNodeRelExp>(yystack_[0].value.as < TreeNodeRelExp* > ());
    yylhs.value.as < TreeNodeEqExp* > ()->op = SYSY_EQ;
  }
#line 2460 "parser.tab.cc"
    break;

  case 95: // EqExp: EqExp tNEQ RelExp
#line 759 "parser.y"
                           {
    yylhs.value.as < TreeNodeEqExp* > () = new TreeNodeEqExp();
    yylhs.value.as < TreeNodeEqExp* > ()->EqExp = shared_ptr<TreeNodeEqExp>(yystack_[2].value.as < TreeNodeEqExp* > ());
    yylhs.value.as < TreeNodeEqExp* > ()->RelExp = shared_ptr<TreeNodeRelExp>(yystack_[0].value.as < TreeNodeRelExp* > ());
    yylhs.value.as < TreeNodeEqExp* > ()->op = SYSY_NEQ;
  }
#line 2471 "parser.tab.cc"
    break;

  case 96: // LAndExp: EqExp
#line 768 "parser.y"
              {
    yylhs.value.as < TreeNodeLAndExp* > () = new TreeNodeLAndExp();
    yylhs.value.as < TreeNodeLAndExp* > ()->LAndExp = nullptr;
    yylhs.value.as < TreeNodeLAndExp* > ()->EqExp = shared_ptr<TreeNodeEqExp>(yystack_[0].value.as < TreeNodeEqExp* > ());
  }
#line 2481 "parser.tab.cc"
    break;

  case 97: // LAndExp: LAndExp tAND EqExp
#line 773 "parser.y"
                            {
    yylhs.value.as < TreeNodeLAndExp* > () = new TreeNodeLAndExp();
    yylhs.value.as < TreeNodeLAndExp* > ()->LAndExp = shared_ptr<TreeNodeLAndExp>(yystack_[2].value.as < TreeNodeLAndExp* > ());
    yylhs.value.as < TreeNodeLAndExp* > ()->EqExp = shared_ptr<TreeNodeEqExp>(yystack_[0].value.as < TreeNodeEqExp* > ());
    yylhs.value.as < TreeNodeLAndExp* > ()->op = SYSY_AND;
  }
#line 2492 "parser.tab.cc"
    break;

  case 98: // LOrExp: LAndExp
#line 782 "parser.y"
              {
    yylhs.value.as < TreeNodeLOrExp* > () = new TreeNodeLOrExp();
    yylhs.value.as < TreeNodeLOrExp* > ()->LOrExp = nullptr;
    yylhs.value.as < TreeNodeLOrExp* > ()->LAndExp = shared_ptr<TreeNodeLAndExp>(yystack_[0].value.as < TreeNodeLAndExp* > ());
  }
#line 2502 "parser.tab.cc"
    break;

  case 99: // LOrExp: LOrExp tOR LAndExp
#line 787 "parser.y"
                            {
    yylhs.value.as < TreeNodeLOrExp* > () = new TreeNodeLOrExp();
    yylhs.value.as < TreeNodeLOrExp* > ()->LOrExp = shared_ptr<TreeNodeLOrExp>(yystack_[2].value.as < TreeNodeLOrExp* > ());
    yylhs.value.as < TreeNodeLOrExp* > ()->LAndExp = shared_ptr<TreeNodeLAndExp>(yystack_[0].value.as < TreeNodeLAndExp* > ());
    yylhs.value.as < TreeNodeLOrExp* > ()->op = SYSY_OR;
  }
#line 2513 "parser.tab.cc"
    break;

  case 100: // ConstExp: AddExp
#line 796 "parser.y"
               {
    yylhs.value.as < TreeNodeConstExp* > () = new TreeNodeConstExp();
    yylhs.value.as < TreeNodeConstExp* > ()->AddExp = shared_ptr<TreeNodeAddExp>(yystack_[0].value.as < TreeNodeAddExp* > ());
  }
#line 2522 "parser.tab.cc"
    break;


#line 2526 "parser.tab.cc"

            default:
              break;
            }
        }
#if YY_EXCEPTIONS
      catch (const syntax_error& yyexc)
        {
          YYCDEBUG << "Caught exception: " << yyexc.what() << '\n';
          error (yyexc);
          YYERROR;
        }
#endif // YY_EXCEPTIONS
      YY_SYMBOL_PRINT ("-> $$ =", yylhs);
      yypop_ (yylen);
      yylen = 0;

      // Shift the result of the reduction.
      yypush_ (YY_NULLPTR, YY_MOVE (yylhs));
    }
    goto yynewstate;


  /*--------------------------------------.
  | yyerrlab -- here on detecting error.  |
  `--------------------------------------*/
  yyerrlab:
    // If not already recovering from an error, report this error.
    if (!yyerrstatus_)
      {
        ++yynerrs_;
        context yyctx (*this, yyla);
        std::string msg = yysyntax_error_ (yyctx);
        error (yyla.location, YY_MOVE (msg));
      }


    yyerror_range[1].location = yyla.location;
    if (yyerrstatus_ == 3)
      {
        /* If just tried and failed to reuse lookahead token after an
           error, discard it.  */

        // Return failure if at end of input.
        if (yyla.kind () == symbol_kind::S_YYEOF)
          YYABORT;
        else if (!yyla.empty ())
          {
            yy_destroy_ ("Error: discarding", yyla);
            yyla.clear ();
          }
      }

    // Else will try to reuse lookahead token after shifting the error token.
    goto yyerrlab1;


  /*---------------------------------------------------.
  | yyerrorlab -- error raised explicitly by YYERROR.  |
  `---------------------------------------------------*/
  yyerrorlab:
    /* Pacify compilers when the user code never invokes YYERROR and
       the label yyerrorlab therefore never appears in user code.  */
    if (false)
      YYERROR;

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYERROR.  */
    yypop_ (yylen);
    yylen = 0;
    YY_STACK_PRINT ();
    goto yyerrlab1;


  /*-------------------------------------------------------------.
  | yyerrlab1 -- common code for both syntax error and YYERROR.  |
  `-------------------------------------------------------------*/
  yyerrlab1:
    yyerrstatus_ = 3;   // Each real token shifted decrements this.
    // Pop stack until we find a state that shifts the error token.
    for (;;)
      {
        yyn = yypact_[+yystack_[0].state];
        if (!yy_pact_value_is_default_ (yyn))
          {
            yyn += symbol_kind::S_YYerror;
            if (0 <= yyn && yyn <= yylast_
                && yycheck_[yyn] == symbol_kind::S_YYerror)
              {
                yyn = yytable_[yyn];
                if (0 < yyn)
                  break;
              }
          }

        // Pop the current state because it cannot handle the error token.
        if (yystack_.size () == 1)
          YYABORT;

        yyerror_range[1].location = yystack_[0].location;
        yy_destroy_ ("Error: popping", yystack_[0]);
        yypop_ ();
        YY_STACK_PRINT ();
      }
    {
      stack_symbol_type error_token;

      yyerror_range[2].location = yyla.location;
      YYLLOC_DEFAULT (error_token.location, yyerror_range, 2);

      // Shift the error token.
      error_token.state = state_type (yyn);
      yypush_ ("Shifting", YY_MOVE (error_token));
    }
    goto yynewstate;


  /*-------------------------------------.
  | yyacceptlab -- YYACCEPT comes here.  |
  `-------------------------------------*/
  yyacceptlab:
    yyresult = 0;
    goto yyreturn;


  /*-----------------------------------.
  | yyabortlab -- YYABORT comes here.  |
  `-----------------------------------*/
  yyabortlab:
    yyresult = 1;
    goto yyreturn;


  /*-----------------------------------------------------.
  | yyreturn -- parsing is finished, return the result.  |
  `-----------------------------------------------------*/
  yyreturn:
    if (!yyla.empty ())
      yy_destroy_ ("Cleanup: discarding lookahead", yyla);

    /* Do not reclaim the symbols of the rule whose action triggered
       this YYABORT or YYACCEPT.  */
    yypop_ (yylen);
    YY_STACK_PRINT ();
    while (1 < yystack_.size ())
      {
        yy_destroy_ ("Cleanup: popping", yystack_[0]);
        yypop_ ();
      }

    return yyresult;
  }
#if YY_EXCEPTIONS
    catch (...)
      {
        YYCDEBUG << "Exception caught: cleaning lookahead and stack\n";
        // Do not try to display the values of the reclaimed symbols,
        // as their printers might throw an exception.
        if (!yyla.empty ())
          yy_destroy_ (YY_NULLPTR, yyla);

        while (1 < yystack_.size ())
          {
            yy_destroy_ (YY_NULLPTR, yystack_[0]);
            yypop_ ();
          }
        throw;
      }
#endif // YY_EXCEPTIONS
  }

  void
  parser::error (const syntax_error& yyexc)
  {
    error (yyexc.location, yyexc.what ());
  }

  /* Return YYSTR after stripping away unnecessary quotes and
     backslashes, so that it's suitable for yyerror.  The heuristic is
     that double-quoting is unnecessary unless the string contains an
     apostrophe, a comma, or backslash (other than backslash-backslash).
     YYSTR is taken from yytname.  */
  std::string
  parser::yytnamerr_ (const char *yystr)
  {
    if (*yystr == '"')
      {
        std::string yyr;
        char const *yyp = yystr;

        for (;;)
          switch (*++yyp)
            {
            case '\'':
            case ',':
              goto do_not_strip_quotes;

            case '\\':
              if (*++yyp != '\\')
                goto do_not_strip_quotes;
              else
                goto append;

            append:
            default:
              yyr += *yyp;
              break;

            case '"':
              return yyr;
            }
      do_not_strip_quotes: ;
      }

    return yystr;
  }

  std::string
  parser::symbol_name (symbol_kind_type yysymbol)
  {
    return yytnamerr_ (yytname_[yysymbol]);
  }



  // parser::context.
  parser::context::context (const parser& yyparser, const symbol_type& yyla)
    : yyparser_ (yyparser)
    , yyla_ (yyla)
  {}

  int
  parser::context::expected_tokens (symbol_kind_type yyarg[], int yyargn) const
  {
    // Actual number of expected tokens
    int yycount = 0;

    int yyn = yypact_[+yyparser_.yystack_[0].state];
    if (!yy_pact_value_is_default_ (yyn))
      {
        /* Start YYX at -YYN if negative to avoid negative indexes in
           YYCHECK.  In other words, skip the first -YYN actions for
           this state because they are default actions.  */
        int yyxbegin = yyn < 0 ? -yyn : 0;
        // Stay within bounds of both yycheck and yytname.
        int yychecklim = yylast_ - yyn + 1;
        int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
        for (int yyx = yyxbegin; yyx < yyxend; ++yyx)
          if (yycheck_[yyx + yyn] == yyx && yyx != symbol_kind::S_YYerror
              && !yy_table_value_is_error_ (yytable_[yyx + yyn]))
            {
              if (!yyarg)
                ++yycount;
              else if (yycount == yyargn)
                return 0;
              else
                yyarg[yycount++] = YY_CAST (symbol_kind_type, yyx);
            }
      }

    if (yyarg && yycount == 0 && 0 < yyargn)
      yyarg[0] = symbol_kind::S_YYEMPTY;
    return yycount;
  }



  int
  parser::yy_syntax_error_arguments_ (const context& yyctx,
                                                 symbol_kind_type yyarg[], int yyargn) const
  {
    /* There are many possibilities here to consider:
       - If this state is a consistent state with a default action, then
         the only way this function was invoked is if the default action
         is an error action.  In that case, don't check for expected
         tokens because there are none.
       - The only way there can be no lookahead present (in yyla) is
         if this state is a consistent state with a default action.
         Thus, detecting the absence of a lookahead is sufficient to
         determine that there is no unexpected or expected token to
         report.  In that case, just report a simple "syntax error".
       - Don't assume there isn't a lookahead just because this state is
         a consistent state with a default action.  There might have
         been a previous inconsistent state, consistent state with a
         non-default action, or user semantic action that manipulated
         yyla.  (However, yyla is currently not documented for users.)
       - Of course, the expected token list depends on states to have
         correct lookahead information, and it depends on the parser not
         to perform extra reductions after fetching a lookahead from the
         scanner and before detecting a syntax error.  Thus, state merging
         (from LALR or IELR) and default reductions corrupt the expected
         token list.  However, the list is correct for canonical LR with
         one exception: it will still contain any token that will not be
         accepted due to an error action in a later state.
    */

    if (!yyctx.lookahead ().empty ())
      {
        if (yyarg)
          yyarg[0] = yyctx.token ();
        int yyn = yyctx.expected_tokens (yyarg ? yyarg + 1 : yyarg, yyargn - 1);
        return yyn + 1;
      }
    return 0;
  }

  // Generate an error message.
  std::string
  parser::yysyntax_error_ (const context& yyctx) const
  {
    // Its maximum.
    enum { YYARGS_MAX = 5 };
    // Arguments of yyformat.
    symbol_kind_type yyarg[YYARGS_MAX];
    int yycount = yy_syntax_error_arguments_ (yyctx, yyarg, YYARGS_MAX);

    char const* yyformat = YY_NULLPTR;
    switch (yycount)
      {
#define YYCASE_(N, S)                         \
        case N:                               \
          yyformat = S;                       \
        break
      default: // Avoid compiler warnings.
        YYCASE_ (0, YY_("syntax error"));
        YYCASE_ (1, YY_("syntax error, unexpected %s"));
        YYCASE_ (2, YY_("syntax error, unexpected %s, expecting %s"));
        YYCASE_ (3, YY_("syntax error, unexpected %s, expecting %s or %s"));
        YYCASE_ (4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
        YYCASE_ (5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
#undef YYCASE_
      }

    std::string yyres;
    // Argument number.
    std::ptrdiff_t yyi = 0;
    for (char const* yyp = yyformat; *yyp; ++yyp)
      if (yyp[0] == '%' && yyp[1] == 's' && yyi < yycount)
        {
          yyres += symbol_name (yyarg[yyi++]);
          ++yyp;
        }
      else
        yyres += *yyp;
    return yyres;
  }


  const short parser::yypact_ninf_ = -137;

  const signed char parser::yytable_ninf_ = -1;

  const short
  parser::yypact_[] =
  {
      15,  -137,  -137,    44,     6,  -137,  -137,  -137,  -137,   -15,
      -9,  -137,  -137,  -137,     8,    80,  -137,  -137,    88,  -137,
      39,    19,  -137,    -6,    36,  -137,    -9,    25,    37,    57,
    -137,   145,   183,  -137,  -137,   152,  -137,  -137,  -137,    23,
      44,    25,  -137,  -137,  -137,   183,    50,    60,  -137,  -137,
    -137,  -137,  -137,  -137,  -137,  -137,   183,    55,    97,    97,
      54,   135,  -137,  -137,   106,  -137,    63,  -137,  -137,    70,
    -137,  -137,   -11,   174,    78,  -137,   183,   183,   183,   183,
     183,  -137,  -137,  -137,    -4,  -137,  -137,    90,   181,   105,
     111,   115,  -137,  -137,    -6,  -137,  -137,  -137,  -137,  -137,
    -137,  -137,  -137,  -137,   124,   126,   183,  -137,   145,  -137,
    -137,  -137,    69,   183,  -137,  -137,  -137,    55,    55,   152,
    -137,   183,  -137,   130,   183,  -137,  -137,  -137,   183,   129,
    -137,   183,  -137,   133,  -137,   128,    97,    84,    94,   120,
     110,  -137,   142,   146,  -137,  -137,  -137,     7,   183,   183,
     183,   183,   183,   183,   183,   183,     7,  -137,   139,    97,
      97,    97,    97,    84,    84,    94,   120,  -137,     7,  -137
  };

  const signed char
  parser::yydefact_[] =
  {
       0,    32,    31,     0,     0,     3,     5,     6,     7,     0,
       0,     1,     4,     2,    13,     0,    21,    13,     0,    10,
       0,    22,    19,     0,     0,     8,     0,     0,     0,     0,
      34,     0,     0,    13,    20,     0,     9,    41,    29,    36,
       0,     0,    76,    77,    78,     0,     0,    66,    70,    23,
      24,    68,    71,    69,    81,    72,     0,    85,    62,   100,
       0,     0,    11,    14,     0,    38,    35,    33,    30,     0,
      25,    28,     0,     0,    64,    73,     0,     0,     0,     0,
       0,    12,    16,    18,     0,    47,    39,     0,     0,     0,
       0,     0,    42,    43,     0,    48,    40,    44,    51,    52,
      45,    49,    50,    53,     0,    68,     0,    67,     0,    26,
      75,    80,     0,     0,    82,    83,    84,    86,    87,     0,
      15,     0,    61,     0,     0,    54,    55,    46,     0,     0,
      27,     0,    74,     0,    17,     0,    88,    93,    96,    98,
      63,    60,     0,     0,    37,    79,    65,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    56,    57,    89,
      91,    90,    92,    94,    95,    97,    99,    59,     0,    58
  };

  const short
  parser::yypgoto_[] =
  {
    -137,  -137,   166,   107,  -137,   147,   157,   -54,  -137,   117,
    -137,   159,   -44,  -137,  -137,     2,  -137,   151,  -137,   -17,
    -137,  -137,  -136,  -137,  -137,  -137,  -137,  -137,  -137,   -27,
      51,   -63,  -137,  -137,  -137,   -26,  -137,  -137,  -137,    34,
     -32,   -25,    42,    38,  -137,   165
  };

  const unsigned char
  parser::yydefgoto_[] =
  {
       0,     4,     5,     6,    18,    19,    21,    62,    84,     7,
      15,    16,    49,    72,     8,     9,    29,    30,    66,    95,
      64,    96,    97,    98,    99,   100,   101,   102,   103,   104,
     135,    51,    74,    52,    53,    54,    55,    56,   112,    57,
      58,   137,   138,   139,   140,    63
  };

  const unsigned char
  parser::yytable_[] =
  {
      59,   105,    71,    59,    50,    10,    11,    83,   108,    12,
      38,   158,    42,    43,   109,   119,    44,    14,    69,    50,
     167,   120,    28,    17,    68,    85,    33,    45,    20,    59,
      75,    37,   169,    87,     1,     2,    31,    88,    89,    47,
      48,    32,    28,     1,     2,     3,   111,    90,    91,    37,
     114,   115,   116,    35,     3,    42,    43,    65,    32,    44,
      27,   123,    76,    77,   130,   134,    94,     1,     2,    39,
      45,    78,     1,     2,    46,    70,    40,    81,    41,   129,
      73,    50,    47,    48,   105,   106,   133,    59,   131,   136,
     132,   107,   136,   105,   148,   149,   150,   151,    22,    23,
     113,   143,    79,    80,   145,   105,    25,    26,   152,   153,
     121,    42,    43,   117,   118,    44,   159,   160,   161,   162,
     136,   136,   136,   136,    85,   124,    45,   163,   164,   125,
      37,    86,    87,   126,     1,     2,    88,    89,    47,    48,
      42,    43,   127,   128,    44,     3,    90,    91,   141,   147,
      42,    43,   144,   155,    44,    45,   146,    42,    43,    61,
      82,    44,   154,   156,   157,    45,   168,    47,    48,    46,
      13,    92,    45,    36,    24,   142,    61,    47,    48,    42,
      43,    93,    34,    44,    47,    48,    42,    43,    42,    43,
      44,    67,    44,   166,    45,   110,   165,    60,     0,   122,
       0,    45,     0,    45,     0,     0,    47,    48,     0,     0,
       0,     0,     0,    47,    48,    47,    48
  };

  const short
  parser::yycheck_[] =
  {
      32,    64,    46,    35,    31,     3,     0,    61,    19,     3,
      27,   147,     5,     6,    25,    19,     9,    32,    45,    46,
     156,    25,    20,    32,    41,    18,    32,    20,    20,    61,
      56,    24,   168,    26,    28,    29,    17,    30,    31,    32,
      33,    22,    40,    28,    29,    39,    73,    40,    41,    24,
      76,    77,    78,    17,    39,     5,     6,    34,    22,     9,
      21,    88,     7,     8,   108,   119,    64,    28,    29,    32,
      20,    16,    28,    29,    24,    25,    19,    23,    21,   106,
      20,   108,    32,    33,   147,    22,   113,   119,    19,   121,
      21,    21,   124,   156,    10,    11,    12,    13,    18,    19,
      22,   128,     5,     6,   131,   168,    18,    19,    14,    15,
      20,     5,     6,    79,    80,     9,   148,   149,   150,   151,
     152,   153,   154,   155,    18,    20,    20,   152,   153,    18,
      24,    25,    26,    18,    28,    29,    30,    31,    32,    33,
       5,     6,    18,    17,     9,    39,    40,    41,    18,    21,
       5,     6,    23,    43,     9,    20,    23,     5,     6,    24,
      25,     9,    42,    21,    18,    20,    27,    32,    33,    24,
       4,    64,    20,    26,    17,   124,    24,    32,    33,     5,
       6,    64,    23,     9,    32,    33,     5,     6,     5,     6,
       9,    40,     9,   155,    20,    21,   154,    32,    -1,    18,
      -1,    20,    -1,    20,    -1,    -1,    32,    33,    -1,    -1,
      -1,    -1,    -1,    32,    33,    32,    33
  };

  const signed char
  parser::yystos_[] =
  {
       0,    28,    29,    39,    45,    46,    47,    53,    58,    59,
      59,     0,     3,    46,    32,    54,    55,    32,    48,    49,
      20,    50,    18,    19,    50,    18,    19,    21,    59,    60,
      61,    17,    22,    32,    55,    17,    49,    24,    63,    32,
      19,    21,     5,     6,     9,    20,    24,    32,    33,    56,
      73,    75,    77,    78,    79,    80,    81,    83,    84,    84,
      89,    24,    51,    89,    64,    34,    62,    61,    63,    73,
      25,    56,    57,    20,    76,    79,     7,     8,    16,     5,
       6,    23,    25,    51,    52,    18,    25,    26,    30,    31,
      40,    41,    47,    53,    59,    63,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    75,    22,    21,    19,    25,
      21,    73,    82,    22,    79,    79,    79,    83,    83,    19,
      25,    20,    18,    73,    20,    18,    18,    18,    17,    73,
      56,    19,    21,    73,    51,    74,    84,    85,    86,    87,
      88,    18,    74,    73,    23,    73,    23,    21,    10,    11,
      12,    13,    14,    15,    42,    43,    21,    18,    66,    84,
      84,    84,    84,    85,    85,    86,    87,    66,    27,    66
  };

  const signed char
  parser::yyr1_[] =
  {
       0,    44,    45,    45,    45,    46,    46,    46,    47,    48,
      48,    49,    50,    50,    51,    51,    51,    52,    52,    53,
      54,    54,    55,    55,    56,    56,    56,    57,    57,    58,
      58,    59,    59,    60,    60,    61,    61,    62,    62,    63,
      64,    64,    65,    65,    65,    66,    66,    66,    66,    66,
      66,    66,    66,    66,    67,    68,    69,    70,    70,    71,
      72,    72,    73,    74,    75,    76,    76,    77,    77,    77,
      78,    79,    79,    79,    80,    80,    81,    81,    81,    82,
      82,    83,    83,    83,    83,    84,    84,    84,    85,    85,
      85,    85,    85,    86,    86,    86,    87,    87,    88,    88,
      89
  };

  const signed char
  parser::yyr2_[] =
  {
       0,     2,     2,     1,     2,     1,     1,     1,     4,     3,
       1,     4,     4,     0,     1,     3,     2,     3,     1,     3,
       3,     1,     2,     4,     1,     2,     3,     3,     1,     5,
       6,     1,     1,     3,     1,     3,     2,     4,     1,     3,
       2,     0,     1,     1,     1,     1,     2,     1,     1,     1,
       1,     1,     1,     1,     2,     2,     4,     5,     7,     5,
       3,     2,     1,     1,     2,     4,     0,     3,     1,     1,
       1,     1,     1,     2,     4,     3,     1,     1,     1,     3,
       1,     1,     3,     3,     3,     1,     3,     3,     1,     3,
       3,     3,     3,     1,     3,     3,     1,     3,     1,     3,
       1
  };


#if YYDEBUG || 1
  // YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
  // First, the terminals, then, starting at \a YYNTOKENS, nonterminals.
  const char*
  const parser::yytname_[] =
  {
  "\"end of file\"", "error", "\"invalid token\"", "tEND", "ERROR",
  "tADD", "tSUB", "tMUL", "tDIV", "tNOT", "tLT", "tLTE", "tGT", "tGTE",
  "tEQ", "tNEQ", "tMOD", "tASSIN", "tSEMI", "tCOMMA", "tLPAREN", "tRPAREN",
  "tLBRACK", "tRBRACK", "tLBRACE", "tRBRACE", "tIF", "tELSE", "tINT",
  "tVOID", "tRETURN", "tWHILE", "tIDENT", "tNUMBER", "tARRAY", "LETTER",
  "EOL", "COMMENT", "BLANK", "tCONST", "tBREAK", "tCONTINUE", "tAND",
  "tOR", "$accept", "TopLevel", "DeclDef", "ConstDecl", "ConstDefList",
  "ConstDef", "ArrayConstExpList", "ConstInitVal", "ConstInitValList",
  "VarDecl", "VarDefList", "VarDef", "InitVal", "InitValList", "FuncDef",
  "DefType", "FuncFParamList", "FuncFParam", "ParamArrayExpList", "Block",
  "BlockItemList", "BlockItem", "Stmt", "BreakStmt", "ContinueStmt",
  "AssignStmt", "IfStmt", "WhileStmt", "ReturnStmt", "Exp", "Cond", "LVal",
  "ArrayExpList", "PrimaryExp", "Number", "UnaryExp", "Callee", "UnaryOp",
  "FuncRParams", "MulExp", "AddExp", "RelExp", "EqExp", "LAndExp",
  "LOrExp", "ConstExp", YY_NULLPTR
  };
#endif


#if YYDEBUG
  const short
  parser::yyrline_[] =
  {
       0,   110,   110,   114,   118,   127,   134,   141,   152,   161,
     165,   173,   182,   186,   192,   196,   201,   208,   212,   220,
     229,   233,   240,   246,   256,   260,   264,   272,   276,   283,
     290,   301,   302,   306,   310,   317,   324,   333,   337,   343,
     351,   355,   362,   368,   374,   383,   395,   406,   417,   428,
     440,   452,   463,   474,   488,   495,   502,   511,   517,   527,
     536,   541,   549,   557,   564,   572,   576,   582,   588,   594,
     603,   613,   620,   627,   637,   642,   649,   650,   651,   655,
     659,   667,   672,   678,   684,   694,   699,   705,   715,   720,
     726,   732,   738,   748,   753,   759,   768,   773,   782,   787,
     796
  };

  void
  parser::yy_stack_print_ () const
  {
    *yycdebug_ << "Stack now";
    for (stack_type::const_iterator
           i = yystack_.begin (),
           i_end = yystack_.end ();
         i != i_end; ++i)
      *yycdebug_ << ' ' << int (i->state);
    *yycdebug_ << '\n';
  }

  void
  parser::yy_reduce_print_ (int yyrule) const
  {
    int yylno = yyrline_[yyrule];
    int yynrhs = yyr2_[yyrule];
    // Print the symbols being reduced, and their result.
    *yycdebug_ << "Reducing stack by rule " << yyrule - 1
               << " (line " << yylno << "):\n";
    // The symbols being reduced.
    for (int yyi = 0; yyi < yynrhs; yyi++)
      YY_SYMBOL_PRINT ("   $" << yyi + 1 << " =",
                       yystack_[(yynrhs) - (yyi + 1)]);
  }
#endif // YYDEBUG


} // yy
#line 3123 "parser.tab.cc"

#line 802 "parser.y"


void yy::parser::error (const location_type& l,
                          const string& m)
{
    driver.error(l, m);
}
