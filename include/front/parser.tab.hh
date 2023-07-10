// A Bison parser, made by GNU Bison 3.7.6.

// Skeleton interface for Bison LALR(1) parsers in C++

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


/**
 ** \file parser.tab.hh
 ** Define the yy::parser class.
 */

// C++ LALR(1) parser skeleton written by Akim Demaille.

// DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
// especially those whose name start with YY_ or yy_.  They are
// private implementation details that can be changed or removed.

#ifndef YY_YY_PARSER_TAB_HH_INCLUDED
# define YY_YY_PARSER_TAB_HH_INCLUDED
// "%code requires" blocks.
#line 2 "parser.y"

#include <iostream>
#include <string>
#include "ast.hh"
using namespace std;
class fdriver;

#line 57 "parser.tab.hh"

# include <cassert>
# include <cstdlib> // std::abort
# include <iostream>
# include <stdexcept>
# include <string>
# include <vector>

#if defined __cplusplus
# define YY_CPLUSPLUS __cplusplus
#else
# define YY_CPLUSPLUS 199711L
#endif

// Support move semantics when possible.
#if 201103L <= YY_CPLUSPLUS
# define YY_MOVE           std::move
# define YY_MOVE_OR_COPY   move
# define YY_MOVE_REF(Type) Type&&
# define YY_RVREF(Type)    Type&&
# define YY_COPY(Type)     Type
#else
# define YY_MOVE
# define YY_MOVE_OR_COPY   copy
# define YY_MOVE_REF(Type) Type&
# define YY_RVREF(Type)    const Type&
# define YY_COPY(Type)     const Type&
#endif

// Support noexcept when possible.
#if 201103L <= YY_CPLUSPLUS
# define YY_NOEXCEPT noexcept
# define YY_NOTHROW
#else
# define YY_NOEXCEPT
# define YY_NOTHROW throw ()
#endif

// Support constexpr when possible.
#if 201703 <= YY_CPLUSPLUS
# define YY_CONSTEXPR constexpr
#else
# define YY_CONSTEXPR
#endif
# include "location.hh"
#include <typeinfo>
#ifndef YY_ASSERT
# include <cassert>
# define YY_ASSERT assert
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                            \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 1
#endif

namespace yy {
#line 191 "parser.tab.hh"




  /// A Bison parser.
  class parser
  {
  public:
#ifndef YYSTYPE
  /// A buffer to store and retrieve objects.
  ///
  /// Sort of a variant, but does not keep track of the nature
  /// of the stored data, since that knowledge is available
  /// via the current parser state.
  class semantic_type
  {
  public:
    /// Type of *this.
    typedef semantic_type self_type;

    /// Empty construction.
    semantic_type () YY_NOEXCEPT
      : yybuffer_ ()
      , yytypeid_ (YY_NULLPTR)
    {}

    /// Construct and fill.
    template <typename T>
    semantic_type (YY_RVREF (T) t)
      : yytypeid_ (&typeid (T))
    {
      YY_ASSERT (sizeof (T) <= size);
      new (yyas_<T> ()) T (YY_MOVE (t));
    }

#if 201103L <= YY_CPLUSPLUS
    /// Non copyable.
    semantic_type (const self_type&) = delete;
    /// Non copyable.
    self_type& operator= (const self_type&) = delete;
#endif

    /// Destruction, allowed only if empty.
    ~semantic_type () YY_NOEXCEPT
    {
      YY_ASSERT (!yytypeid_);
    }

# if 201103L <= YY_CPLUSPLUS
    /// Instantiate a \a T in here from \a t.
    template <typename T, typename... U>
    T&
    emplace (U&&... u)
    {
      YY_ASSERT (!yytypeid_);
      YY_ASSERT (sizeof (T) <= size);
      yytypeid_ = & typeid (T);
      return *new (yyas_<T> ()) T (std::forward <U>(u)...);
    }
# else
    /// Instantiate an empty \a T in here.
    template <typename T>
    T&
    emplace ()
    {
      YY_ASSERT (!yytypeid_);
      YY_ASSERT (sizeof (T) <= size);
      yytypeid_ = & typeid (T);
      return *new (yyas_<T> ()) T ();
    }

    /// Instantiate a \a T in here from \a t.
    template <typename T>
    T&
    emplace (const T& t)
    {
      YY_ASSERT (!yytypeid_);
      YY_ASSERT (sizeof (T) <= size);
      yytypeid_ = & typeid (T);
      return *new (yyas_<T> ()) T (t);
    }
# endif

    /// Instantiate an empty \a T in here.
    /// Obsolete, use emplace.
    template <typename T>
    T&
    build ()
    {
      return emplace<T> ();
    }

    /// Instantiate a \a T in here from \a t.
    /// Obsolete, use emplace.
    template <typename T>
    T&
    build (const T& t)
    {
      return emplace<T> (t);
    }

    /// Accessor to a built \a T.
    template <typename T>
    T&
    as () YY_NOEXCEPT
    {
      YY_ASSERT (yytypeid_);
      YY_ASSERT (*yytypeid_ == typeid (T));
      YY_ASSERT (sizeof (T) <= size);
      return *yyas_<T> ();
    }

    /// Const accessor to a built \a T (for %printer).
    template <typename T>
    const T&
    as () const YY_NOEXCEPT
    {
      YY_ASSERT (yytypeid_);
      YY_ASSERT (*yytypeid_ == typeid (T));
      YY_ASSERT (sizeof (T) <= size);
      return *yyas_<T> ();
    }

    /// Swap the content with \a that, of same type.
    ///
    /// Both variants must be built beforehand, because swapping the actual
    /// data requires reading it (with as()), and this is not possible on
    /// unconstructed variants: it would require some dynamic testing, which
    /// should not be the variant's responsibility.
    /// Swapping between built and (possibly) non-built is done with
    /// self_type::move ().
    template <typename T>
    void
    swap (self_type& that) YY_NOEXCEPT
    {
      YY_ASSERT (yytypeid_);
      YY_ASSERT (*yytypeid_ == *that.yytypeid_);
      std::swap (as<T> (), that.as<T> ());
    }

    /// Move the content of \a that to this.
    ///
    /// Destroys \a that.
    template <typename T>
    void
    move (self_type& that)
    {
# if 201103L <= YY_CPLUSPLUS
      emplace<T> (std::move (that.as<T> ()));
# else
      emplace<T> ();
      swap<T> (that);
# endif
      that.destroy<T> ();
    }

# if 201103L <= YY_CPLUSPLUS
    /// Move the content of \a that to this.
    template <typename T>
    void
    move (self_type&& that)
    {
      emplace<T> (std::move (that.as<T> ()));
      that.destroy<T> ();
    }
#endif

    /// Copy the content of \a that to this.
    template <typename T>
    void
    copy (const self_type& that)
    {
      emplace<T> (that.as<T> ());
    }

    /// Destroy the stored \a T.
    template <typename T>
    void
    destroy ()
    {
      as<T> ().~T ();
      yytypeid_ = YY_NULLPTR;
    }

  private:
#if YY_CPLUSPLUS < 201103L
    /// Non copyable.
    semantic_type (const self_type&);
    /// Non copyable.
    self_type& operator= (const self_type&);
#endif

    /// Accessor to raw memory as \a T.
    template <typename T>
    T*
    yyas_ () YY_NOEXCEPT
    {
      void *yyp = yybuffer_.yyraw;
      return static_cast<T*> (yyp);
     }

    /// Const accessor to raw memory as \a T.
    template <typename T>
    const T*
    yyas_ () const YY_NOEXCEPT
    {
      const void *yyp = yybuffer_.yyraw;
      return static_cast<const T*> (yyp);
     }

    /// An auxiliary type to compute the largest semantic type.
    union union_type
    {
      // AddExp
      char dummy1[sizeof (TreeNodeAddExp*)];

      // ArrayConstExpList
      char dummy2[sizeof (TreeNodeArrayConstExpList*)];

      // ArrayExpList
      char dummy3[sizeof (TreeNodeArrayExpList*)];

      // AssignStmt
      char dummy4[sizeof (TreeNodeAssignStmt*)];

      // Block
      char dummy5[sizeof (TreeNodeBlock*)];

      // BlockItem
      char dummy6[sizeof (TreeNodeBlockItem*)];

      // BlockItemList
      char dummy7[sizeof (TreeNodeBlockItemList*)];

      // BreakStmt
      char dummy8[sizeof (TreeNodeBreakStmt*)];

      // Callee
      char dummy9[sizeof (TreeNodeCallee*)];

      // Cond
      char dummy10[sizeof (TreeNodeCond*)];

      // ConstDecl
      char dummy11[sizeof (TreeNodeConstDecl*)];

      // ConstDef
      char dummy12[sizeof (TreeNodeConstDef*)];

      // ConstDefList
      char dummy13[sizeof (TreeNodeConstDefList*)];

      // ConstExp
      char dummy14[sizeof (TreeNodeConstExp*)];

      // ConstInitVal
      char dummy15[sizeof (TreeNodeConstInitVal*)];

      // ConstInitValList
      char dummy16[sizeof (TreeNodeConstInitValList*)];

      // ContinueStmt
      char dummy17[sizeof (TreeNodeContinueStmt*)];

      // DeclDef
      char dummy18[sizeof (TreeNodeDeclDef*)];

      // EqExp
      char dummy19[sizeof (TreeNodeEqExp*)];

      // Exp
      char dummy20[sizeof (TreeNodeExp*)];

      // ExpList
      char dummy21[sizeof (TreeNodeExpList*)];

      // FuncDef
      char dummy22[sizeof (TreeNodeFuncDef*)];

      // FuncFParam
      char dummy23[sizeof (TreeNodeFuncFParam*)];

      // FuncFParamList
      char dummy24[sizeof (TreeNodeFuncFParamList*)];

      // IfStmt
      char dummy25[sizeof (TreeNodeIfStmt*)];

      // InitVal
      char dummy26[sizeof (TreeNodeInitVal*)];

      // InitValList
      char dummy27[sizeof (TreeNodeInitValList*)];

      // LAndExp
      char dummy28[sizeof (TreeNodeLAndExp*)];

      // LOrExp
      char dummy29[sizeof (TreeNodeLOrExp*)];

      // LVal
      char dummy30[sizeof (TreeNodeLVal*)];

      // MulExp
      char dummy31[sizeof (TreeNodeMulExp*)];

      // Number
      char dummy32[sizeof (TreeNodeNumber*)];

      // ParamArrayExpList
      char dummy33[sizeof (TreeNodeParamArrayExpList*)];

      // PrimaryExp
      char dummy34[sizeof (TreeNodePrimaryExp*)];

      // RelExp
      char dummy35[sizeof (TreeNodeRelExp*)];

      // ReturnStmt
      char dummy36[sizeof (TreeNodeReturnStmt*)];

      // Stmt
      char dummy37[sizeof (TreeNodeStmt*)];

      // TopLevel
      char dummy38[sizeof (TreeNodeTopLevel*)];

      // UnaryExp
      char dummy39[sizeof (TreeNodeUnaryExp*)];

      // VarDecl
      char dummy40[sizeof (TreeNodeVarDecl*)];

      // VarDef
      char dummy41[sizeof (TreeNodeVarDef*)];

      // VarDefList
      char dummy42[sizeof (TreeNodeVarDefList*)];

      // WhileStmt
      char dummy43[sizeof (TreeNodeWhileStmt*)];

      // tNUMBER
      char dummy44[sizeof (int)];

      // tIDENT
      char dummy45[sizeof (string)];

      // DefType
      char dummy46[sizeof (typeFunc)];

      // UnaryOp
      char dummy47[sizeof (unaryop)];
    };

    /// The size of the largest semantic type.
    enum { size = sizeof (union_type) };

    /// A buffer to store semantic values.
    union
    {
      /// Strongest alignment constraints.
      long double yyalign_me;
      /// A buffer large enough to store any of the semantic values.
      char yyraw[size];
    } yybuffer_;

    /// Whether the content is built: if defined, the name of the stored type.
    const std::type_info *yytypeid_;
  };

#else
    typedef YYSTYPE semantic_type;
#endif
    /// Symbol locations.
    typedef location location_type;

    /// Syntax errors thrown from user actions.
    struct syntax_error : std::runtime_error
    {
      syntax_error (const location_type& l, const std::string& m)
        : std::runtime_error (m)
        , location (l)
      {}

      syntax_error (const syntax_error& s)
        : std::runtime_error (s.what ())
        , location (s.location)
      {}

      ~syntax_error () YY_NOEXCEPT YY_NOTHROW;

      location_type location;
    };

    /// Token kinds.
    struct token
    {
      enum token_kind_type
      {
        TOK_YYEMPTY = -2,
    TOK_YYEOF = 0,                 // "end of file"
    TOK_YYerror = 256,             // error
    TOK_YYUNDEF = 257,             // "invalid token"
    TOK_tEND = 258,                // tEND
    TOK_ERROR = 259,               // ERROR
    TOK_tADD = 260,                // tADD
    TOK_tSUB = 261,                // tSUB
    TOK_tMUL = 262,                // tMUL
    TOK_tDIV = 263,                // tDIV
    TOK_tNOT = 264,                // tNOT
    TOK_tLT = 265,                 // tLT
    TOK_tLTE = 266,                // tLTE
    TOK_tGT = 267,                 // tGT
    TOK_tGTE = 268,                // tGTE
    TOK_tEQ = 269,                 // tEQ
    TOK_tNEQ = 270,                // tNEQ
    TOK_tMOD = 271,                // tMOD
    TOK_tASSIN = 272,              // tASSIN
    TOK_tSEMI = 273,               // tSEMI
    TOK_tCOMMA = 274,              // tCOMMA
    TOK_tLPAREN = 275,             // tLPAREN
    TOK_tRPAREN = 276,             // tRPAREN
    TOK_tLBRACK = 277,             // tLBRACK
    TOK_tRBRACK = 278,             // tRBRACK
    TOK_tLBRACE = 279,             // tLBRACE
    TOK_tRBRACE = 280,             // tRBRACE
    TOK_tIF = 281,                 // tIF
    TOK_tELSE = 282,               // tELSE
    TOK_tINT = 283,                // tINT
    TOK_tVOID = 284,               // tVOID
    TOK_tRETURN = 285,             // tRETURN
    TOK_tWHILE = 286,              // tWHILE
    TOK_tIDENT = 287,              // tIDENT
    TOK_tNUMBER = 288,             // tNUMBER
    TOK_tARRAY = 289,              // tARRAY
    TOK_LETTER = 290,              // LETTER
    TOK_EOL = 291,                 // EOL
    TOK_COMMENT = 292,             // COMMENT
    TOK_BLANK = 293,               // BLANK
    TOK_tCONST = 294,              // tCONST
    TOK_tBREAK = 295,              // tBREAK
    TOK_tCONTINUE = 296,           // tCONTINUE
    TOK_tAND = 297,                // tAND
    TOK_tOR = 298                  // tOR
      };
      /// Backward compatibility alias (Bison 3.6).
      typedef token_kind_type yytokentype;
    };

    /// Token kind, as returned by yylex.
    typedef token::yytokentype token_kind_type;

    /// Backward compatibility alias (Bison 3.6).
    typedef token_kind_type token_type;

    /// Symbol kinds.
    struct symbol_kind
    {
      enum symbol_kind_type
      {
        YYNTOKENS = 44, ///< Number of tokens.
        S_YYEMPTY = -2,
        S_YYEOF = 0,                             // "end of file"
        S_YYerror = 1,                           // error
        S_YYUNDEF = 2,                           // "invalid token"
        S_tEND = 3,                              // tEND
        S_ERROR = 4,                             // ERROR
        S_tADD = 5,                              // tADD
        S_tSUB = 6,                              // tSUB
        S_tMUL = 7,                              // tMUL
        S_tDIV = 8,                              // tDIV
        S_tNOT = 9,                              // tNOT
        S_tLT = 10,                              // tLT
        S_tLTE = 11,                             // tLTE
        S_tGT = 12,                              // tGT
        S_tGTE = 13,                             // tGTE
        S_tEQ = 14,                              // tEQ
        S_tNEQ = 15,                             // tNEQ
        S_tMOD = 16,                             // tMOD
        S_tASSIN = 17,                           // tASSIN
        S_tSEMI = 18,                            // tSEMI
        S_tCOMMA = 19,                           // tCOMMA
        S_tLPAREN = 20,                          // tLPAREN
        S_tRPAREN = 21,                          // tRPAREN
        S_tLBRACK = 22,                          // tLBRACK
        S_tRBRACK = 23,                          // tRBRACK
        S_tLBRACE = 24,                          // tLBRACE
        S_tRBRACE = 25,                          // tRBRACE
        S_tIF = 26,                              // tIF
        S_tELSE = 27,                            // tELSE
        S_tINT = 28,                             // tINT
        S_tVOID = 29,                            // tVOID
        S_tRETURN = 30,                          // tRETURN
        S_tWHILE = 31,                           // tWHILE
        S_tIDENT = 32,                           // tIDENT
        S_tNUMBER = 33,                          // tNUMBER
        S_tARRAY = 34,                           // tARRAY
        S_LETTER = 35,                           // LETTER
        S_EOL = 36,                              // EOL
        S_COMMENT = 37,                          // COMMENT
        S_BLANK = 38,                            // BLANK
        S_tCONST = 39,                           // tCONST
        S_tBREAK = 40,                           // tBREAK
        S_tCONTINUE = 41,                        // tCONTINUE
        S_tAND = 42,                             // tAND
        S_tOR = 43,                              // tOR
        S_YYACCEPT = 44,                         // $accept
        S_TopLevel = 45,                         // TopLevel
        S_DeclDef = 46,                          // DeclDef
        S_ConstDecl = 47,                        // ConstDecl
        S_ConstDefList = 48,                     // ConstDefList
        S_ConstDef = 49,                         // ConstDef
        S_ArrayConstExpList = 50,                // ArrayConstExpList
        S_ConstInitVal = 51,                     // ConstInitVal
        S_ConstInitValList = 52,                 // ConstInitValList
        S_VarDecl = 53,                          // VarDecl
        S_VarDefList = 54,                       // VarDefList
        S_VarDef = 55,                           // VarDef
        S_InitVal = 56,                          // InitVal
        S_InitValList = 57,                      // InitValList
        S_FuncDef = 58,                          // FuncDef
        S_DefType = 59,                          // DefType
        S_FuncFParamList = 60,                   // FuncFParamList
        S_FuncFParam = 61,                       // FuncFParam
        S_ParamArrayExpList = 62,                // ParamArrayExpList
        S_Block = 63,                            // Block
        S_BlockItemList = 64,                    // BlockItemList
        S_BlockItem = 65,                        // BlockItem
        S_Stmt = 66,                             // Stmt
        S_BreakStmt = 67,                        // BreakStmt
        S_ContinueStmt = 68,                     // ContinueStmt
        S_AssignStmt = 69,                       // AssignStmt
        S_IfStmt = 70,                           // IfStmt
        S_WhileStmt = 71,                        // WhileStmt
        S_ReturnStmt = 72,                       // ReturnStmt
        S_Exp = 73,                              // Exp
        S_Cond = 74,                             // Cond
        S_LVal = 75,                             // LVal
        S_ArrayExpList = 76,                     // ArrayExpList
        S_PrimaryExp = 77,                       // PrimaryExp
        S_Number = 78,                           // Number
        S_UnaryExp = 79,                         // UnaryExp
        S_Callee = 80,                           // Callee
        S_UnaryOp = 81,                          // UnaryOp
        S_ExpList = 82,                          // ExpList
        S_MulExp = 83,                           // MulExp
        S_AddExp = 84,                           // AddExp
        S_RelExp = 85,                           // RelExp
        S_EqExp = 86,                            // EqExp
        S_LAndExp = 87,                          // LAndExp
        S_LOrExp = 88,                           // LOrExp
        S_ConstExp = 89                          // ConstExp
      };
    };

    /// (Internal) symbol kind.
    typedef symbol_kind::symbol_kind_type symbol_kind_type;

    /// The number of tokens.
    static const symbol_kind_type YYNTOKENS = symbol_kind::YYNTOKENS;

    /// A complete symbol.
    ///
    /// Expects its Base type to provide access to the symbol kind
    /// via kind ().
    ///
    /// Provide access to semantic value and location.
    template <typename Base>
    struct basic_symbol : Base
    {
      /// Alias to Base.
      typedef Base super_type;

      /// Default constructor.
      basic_symbol ()
        : value ()
        , location ()
      {}

#if 201103L <= YY_CPLUSPLUS
      /// Move constructor.
      basic_symbol (basic_symbol&& that)
        : Base (std::move (that))
        , value ()
        , location (std::move (that.location))
      {
        switch (this->kind ())
    {
      case symbol_kind::S_AddExp: // AddExp
        value.move< TreeNodeAddExp* > (std::move (that.value));
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.move< TreeNodeArrayConstExpList* > (std::move (that.value));
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.move< TreeNodeArrayExpList* > (std::move (that.value));
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.move< TreeNodeAssignStmt* > (std::move (that.value));
        break;

      case symbol_kind::S_Block: // Block
        value.move< TreeNodeBlock* > (std::move (that.value));
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.move< TreeNodeBlockItem* > (std::move (that.value));
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.move< TreeNodeBlockItemList* > (std::move (that.value));
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.move< TreeNodeBreakStmt* > (std::move (that.value));
        break;

      case symbol_kind::S_Callee: // Callee
        value.move< TreeNodeCallee* > (std::move (that.value));
        break;

      case symbol_kind::S_Cond: // Cond
        value.move< TreeNodeCond* > (std::move (that.value));
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.move< TreeNodeConstDecl* > (std::move (that.value));
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.move< TreeNodeConstDef* > (std::move (that.value));
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.move< TreeNodeConstDefList* > (std::move (that.value));
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.move< TreeNodeConstExp* > (std::move (that.value));
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.move< TreeNodeConstInitVal* > (std::move (that.value));
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.move< TreeNodeConstInitValList* > (std::move (that.value));
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.move< TreeNodeContinueStmt* > (std::move (that.value));
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.move< TreeNodeDeclDef* > (std::move (that.value));
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.move< TreeNodeEqExp* > (std::move (that.value));
        break;

      case symbol_kind::S_Exp: // Exp
        value.move< TreeNodeExp* > (std::move (that.value));
        break;

      case symbol_kind::S_ExpList: // ExpList
        value.move< TreeNodeExpList* > (std::move (that.value));
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.move< TreeNodeFuncDef* > (std::move (that.value));
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.move< TreeNodeFuncFParam* > (std::move (that.value));
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.move< TreeNodeFuncFParamList* > (std::move (that.value));
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.move< TreeNodeIfStmt* > (std::move (that.value));
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.move< TreeNodeInitVal* > (std::move (that.value));
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.move< TreeNodeInitValList* > (std::move (that.value));
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.move< TreeNodeLAndExp* > (std::move (that.value));
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.move< TreeNodeLOrExp* > (std::move (that.value));
        break;

      case symbol_kind::S_LVal: // LVal
        value.move< TreeNodeLVal* > (std::move (that.value));
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.move< TreeNodeMulExp* > (std::move (that.value));
        break;

      case symbol_kind::S_Number: // Number
        value.move< TreeNodeNumber* > (std::move (that.value));
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.move< TreeNodeParamArrayExpList* > (std::move (that.value));
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.move< TreeNodePrimaryExp* > (std::move (that.value));
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.move< TreeNodeRelExp* > (std::move (that.value));
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.move< TreeNodeReturnStmt* > (std::move (that.value));
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.move< TreeNodeStmt* > (std::move (that.value));
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.move< TreeNodeTopLevel* > (std::move (that.value));
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.move< TreeNodeUnaryExp* > (std::move (that.value));
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.move< TreeNodeVarDecl* > (std::move (that.value));
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.move< TreeNodeVarDef* > (std::move (that.value));
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.move< TreeNodeVarDefList* > (std::move (that.value));
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.move< TreeNodeWhileStmt* > (std::move (that.value));
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.move< int > (std::move (that.value));
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.move< string > (std::move (that.value));
        break;

      case symbol_kind::S_DefType: // DefType
        value.move< typeFunc > (std::move (that.value));
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.move< unaryop > (std::move (that.value));
        break;

      default:
        break;
    }

      }
#endif

      /// Copy constructor.
      basic_symbol (const basic_symbol& that);

      /// Constructors for typed symbols.
#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, location_type&& l)
        : Base (t)
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const location_type& l)
        : Base (t)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeAddExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeAddExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeArrayConstExpList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeArrayConstExpList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeArrayExpList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeArrayExpList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeAssignStmt*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeAssignStmt*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeBlock*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeBlock*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeBlockItem*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeBlockItem*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeBlockItemList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeBlockItemList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeBreakStmt*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeBreakStmt*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeCallee*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeCallee*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeCond*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeCond*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeConstDecl*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeConstDecl*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeConstDef*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeConstDef*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeConstDefList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeConstDefList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeConstExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeConstExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeConstInitVal*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeConstInitVal*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeConstInitValList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeConstInitValList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeContinueStmt*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeContinueStmt*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeDeclDef*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeDeclDef*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeEqExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeEqExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeExpList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeExpList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeFuncDef*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeFuncDef*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeFuncFParam*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeFuncFParam*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeFuncFParamList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeFuncFParamList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeIfStmt*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeIfStmt*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeInitVal*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeInitVal*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeInitValList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeInitValList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeLAndExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeLAndExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeLOrExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeLOrExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeLVal*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeLVal*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeMulExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeMulExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeNumber*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeNumber*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeParamArrayExpList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeParamArrayExpList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodePrimaryExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodePrimaryExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeRelExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeRelExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeReturnStmt*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeReturnStmt*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeStmt*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeStmt*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeTopLevel*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeTopLevel*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeUnaryExp*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeUnaryExp*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeVarDecl*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeVarDecl*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeVarDef*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeVarDef*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeVarDefList*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeVarDefList*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, TreeNodeWhileStmt*&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const TreeNodeWhileStmt*& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, int&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const int& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, string&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const string& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, typeFunc&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const typeFunc& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

#if 201103L <= YY_CPLUSPLUS
      basic_symbol (typename Base::kind_type t, unaryop&& v, location_type&& l)
        : Base (t)
        , value (std::move (v))
        , location (std::move (l))
      {}
#else
      basic_symbol (typename Base::kind_type t, const unaryop& v, const location_type& l)
        : Base (t)
        , value (v)
        , location (l)
      {}
#endif

      /// Destroy the symbol.
      ~basic_symbol ()
      {
        clear ();
      }

      /// Destroy contents, and record that is empty.
      void clear () YY_NOEXCEPT
      {
        // User destructor.
        symbol_kind_type yykind = this->kind ();
        basic_symbol<Base>& yysym = *this;
        (void) yysym;
        switch (yykind)
        {
       default:
          break;
        }

        // Value type destructor.
switch (yykind)
    {
      case symbol_kind::S_AddExp: // AddExp
        value.template destroy< TreeNodeAddExp* > ();
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.template destroy< TreeNodeArrayConstExpList* > ();
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.template destroy< TreeNodeArrayExpList* > ();
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.template destroy< TreeNodeAssignStmt* > ();
        break;

      case symbol_kind::S_Block: // Block
        value.template destroy< TreeNodeBlock* > ();
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.template destroy< TreeNodeBlockItem* > ();
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.template destroy< TreeNodeBlockItemList* > ();
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.template destroy< TreeNodeBreakStmt* > ();
        break;

      case symbol_kind::S_Callee: // Callee
        value.template destroy< TreeNodeCallee* > ();
        break;

      case symbol_kind::S_Cond: // Cond
        value.template destroy< TreeNodeCond* > ();
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.template destroy< TreeNodeConstDecl* > ();
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.template destroy< TreeNodeConstDef* > ();
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.template destroy< TreeNodeConstDefList* > ();
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.template destroy< TreeNodeConstExp* > ();
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.template destroy< TreeNodeConstInitVal* > ();
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.template destroy< TreeNodeConstInitValList* > ();
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.template destroy< TreeNodeContinueStmt* > ();
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.template destroy< TreeNodeDeclDef* > ();
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.template destroy< TreeNodeEqExp* > ();
        break;

      case symbol_kind::S_Exp: // Exp
        value.template destroy< TreeNodeExp* > ();
        break;

      case symbol_kind::S_ExpList: // ExpList
        value.template destroy< TreeNodeExpList* > ();
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.template destroy< TreeNodeFuncDef* > ();
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.template destroy< TreeNodeFuncFParam* > ();
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.template destroy< TreeNodeFuncFParamList* > ();
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.template destroy< TreeNodeIfStmt* > ();
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.template destroy< TreeNodeInitVal* > ();
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.template destroy< TreeNodeInitValList* > ();
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.template destroy< TreeNodeLAndExp* > ();
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.template destroy< TreeNodeLOrExp* > ();
        break;

      case symbol_kind::S_LVal: // LVal
        value.template destroy< TreeNodeLVal* > ();
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.template destroy< TreeNodeMulExp* > ();
        break;

      case symbol_kind::S_Number: // Number
        value.template destroy< TreeNodeNumber* > ();
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.template destroy< TreeNodeParamArrayExpList* > ();
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.template destroy< TreeNodePrimaryExp* > ();
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.template destroy< TreeNodeRelExp* > ();
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.template destroy< TreeNodeReturnStmt* > ();
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.template destroy< TreeNodeStmt* > ();
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.template destroy< TreeNodeTopLevel* > ();
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.template destroy< TreeNodeUnaryExp* > ();
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.template destroy< TreeNodeVarDecl* > ();
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.template destroy< TreeNodeVarDef* > ();
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.template destroy< TreeNodeVarDefList* > ();
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.template destroy< TreeNodeWhileStmt* > ();
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.template destroy< int > ();
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.template destroy< string > ();
        break;

      case symbol_kind::S_DefType: // DefType
        value.template destroy< typeFunc > ();
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.template destroy< unaryop > ();
        break;

      default:
        break;
    }

        Base::clear ();
      }

      /// The user-facing name of this symbol.
      std::string name () const YY_NOEXCEPT
      {
        return parser::symbol_name (this->kind ());
      }

      /// Backward compatibility (Bison 3.6).
      symbol_kind_type type_get () const YY_NOEXCEPT;

      /// Whether empty.
      bool empty () const YY_NOEXCEPT;

      /// Destructive move, \a s is emptied into this.
      void move (basic_symbol& s);

      /// The semantic value.
      semantic_type value;

      /// The location.
      location_type location;

    private:
#if YY_CPLUSPLUS < 201103L
      /// Assignment operator.
      basic_symbol& operator= (const basic_symbol& that);
#endif
    };

    /// Type access provider for token (enum) based symbols.
    struct by_kind
    {
      /// Default constructor.
      by_kind ();

#if 201103L <= YY_CPLUSPLUS
      /// Move constructor.
      by_kind (by_kind&& that);
#endif

      /// Copy constructor.
      by_kind (const by_kind& that);

      /// The symbol kind as needed by the constructor.
      typedef token_kind_type kind_type;

      /// Constructor from (external) token numbers.
      by_kind (kind_type t);

      /// Record that this symbol is empty.
      void clear () YY_NOEXCEPT;

      /// Steal the symbol kind from \a that.
      void move (by_kind& that);

      /// The (internal) type number (corresponding to \a type).
      /// \a empty when empty.
      symbol_kind_type kind () const YY_NOEXCEPT;

      /// Backward compatibility (Bison 3.6).
      symbol_kind_type type_get () const YY_NOEXCEPT;

      /// The symbol kind.
      /// \a S_YYEMPTY when empty.
      symbol_kind_type kind_;
    };

    /// Backward compatibility for a private implementation detail (Bison 3.6).
    typedef by_kind by_type;

    /// "External" symbols: returned by the scanner.
    struct symbol_type : basic_symbol<by_kind>
    {
      /// Superclass.
      typedef basic_symbol<by_kind> super_type;

      /// Empty symbol.
      symbol_type () {}

      /// Constructor for valueless symbols, and symbols from each type.
#if 201103L <= YY_CPLUSPLUS
      symbol_type (int tok, location_type l)
        : super_type(token_type (tok), std::move (l))
#else
      symbol_type (int tok, const location_type& l)
        : super_type(token_type (tok), l)
#endif
      {
        YY_ASSERT (tok == token::TOK_YYEOF
                   || (token::TOK_YYerror <= tok && tok <= token::TOK_tWHILE)
                   || (token::TOK_tARRAY <= tok && tok <= token::TOK_tOR));
      }
#if 201103L <= YY_CPLUSPLUS
      symbol_type (int tok, int v, location_type l)
        : super_type(token_type (tok), std::move (v), std::move (l))
#else
      symbol_type (int tok, const int& v, const location_type& l)
        : super_type(token_type (tok), v, l)
#endif
      {
        YY_ASSERT (tok == token::TOK_tNUMBER);
      }
#if 201103L <= YY_CPLUSPLUS
      symbol_type (int tok, string v, location_type l)
        : super_type(token_type (tok), std::move (v), std::move (l))
#else
      symbol_type (int tok, const string& v, const location_type& l)
        : super_type(token_type (tok), v, l)
#endif
      {
        YY_ASSERT (tok == token::TOK_tIDENT);
      }
    };

    /// Build a parser object.
    parser (fdriver& driver_yyarg);
    virtual ~parser ();

#if 201103L <= YY_CPLUSPLUS
    /// Non copyable.
    parser (const parser&) = delete;
    /// Non copyable.
    parser& operator= (const parser&) = delete;
#endif

    /// Parse.  An alias for parse ().
    /// \returns  0 iff parsing succeeded.
    int operator() ();

    /// Parse.
    /// \returns  0 iff parsing succeeded.
    virtual int parse ();

#if YYDEBUG
    /// The current debugging stream.
    std::ostream& debug_stream () const YY_ATTRIBUTE_PURE;
    /// Set the current debugging stream.
    void set_debug_stream (std::ostream &);

    /// Type for debugging levels.
    typedef int debug_level_type;
    /// The current debugging level.
    debug_level_type debug_level () const YY_ATTRIBUTE_PURE;
    /// Set the current debugging level.
    void set_debug_level (debug_level_type l);
#endif

    /// Report a syntax error.
    /// \param loc    where the syntax error is found.
    /// \param msg    a description of the syntax error.
    virtual void error (const location_type& loc, const std::string& msg);

    /// Report a syntax error.
    void error (const syntax_error& err);

    /// The user-facing name of the symbol whose (internal) number is
    /// YYSYMBOL.  No bounds checking.
    static std::string symbol_name (symbol_kind_type yysymbol);

    // Implementation of make_symbol for each symbol type.
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_YYEOF (location_type l)
      {
        return symbol_type (token::TOK_YYEOF, std::move (l));
      }
#else
      static
      symbol_type
      make_YYEOF (const location_type& l)
      {
        return symbol_type (token::TOK_YYEOF, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_YYerror (location_type l)
      {
        return symbol_type (token::TOK_YYerror, std::move (l));
      }
#else
      static
      symbol_type
      make_YYerror (const location_type& l)
      {
        return symbol_type (token::TOK_YYerror, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_YYUNDEF (location_type l)
      {
        return symbol_type (token::TOK_YYUNDEF, std::move (l));
      }
#else
      static
      symbol_type
      make_YYUNDEF (const location_type& l)
      {
        return symbol_type (token::TOK_YYUNDEF, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tEND (location_type l)
      {
        return symbol_type (token::TOK_tEND, std::move (l));
      }
#else
      static
      symbol_type
      make_tEND (const location_type& l)
      {
        return symbol_type (token::TOK_tEND, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_ERROR (location_type l)
      {
        return symbol_type (token::TOK_ERROR, std::move (l));
      }
#else
      static
      symbol_type
      make_ERROR (const location_type& l)
      {
        return symbol_type (token::TOK_ERROR, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tADD (location_type l)
      {
        return symbol_type (token::TOK_tADD, std::move (l));
      }
#else
      static
      symbol_type
      make_tADD (const location_type& l)
      {
        return symbol_type (token::TOK_tADD, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tSUB (location_type l)
      {
        return symbol_type (token::TOK_tSUB, std::move (l));
      }
#else
      static
      symbol_type
      make_tSUB (const location_type& l)
      {
        return symbol_type (token::TOK_tSUB, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tMUL (location_type l)
      {
        return symbol_type (token::TOK_tMUL, std::move (l));
      }
#else
      static
      symbol_type
      make_tMUL (const location_type& l)
      {
        return symbol_type (token::TOK_tMUL, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tDIV (location_type l)
      {
        return symbol_type (token::TOK_tDIV, std::move (l));
      }
#else
      static
      symbol_type
      make_tDIV (const location_type& l)
      {
        return symbol_type (token::TOK_tDIV, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tNOT (location_type l)
      {
        return symbol_type (token::TOK_tNOT, std::move (l));
      }
#else
      static
      symbol_type
      make_tNOT (const location_type& l)
      {
        return symbol_type (token::TOK_tNOT, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tLT (location_type l)
      {
        return symbol_type (token::TOK_tLT, std::move (l));
      }
#else
      static
      symbol_type
      make_tLT (const location_type& l)
      {
        return symbol_type (token::TOK_tLT, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tLTE (location_type l)
      {
        return symbol_type (token::TOK_tLTE, std::move (l));
      }
#else
      static
      symbol_type
      make_tLTE (const location_type& l)
      {
        return symbol_type (token::TOK_tLTE, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tGT (location_type l)
      {
        return symbol_type (token::TOK_tGT, std::move (l));
      }
#else
      static
      symbol_type
      make_tGT (const location_type& l)
      {
        return symbol_type (token::TOK_tGT, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tGTE (location_type l)
      {
        return symbol_type (token::TOK_tGTE, std::move (l));
      }
#else
      static
      symbol_type
      make_tGTE (const location_type& l)
      {
        return symbol_type (token::TOK_tGTE, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tEQ (location_type l)
      {
        return symbol_type (token::TOK_tEQ, std::move (l));
      }
#else
      static
      symbol_type
      make_tEQ (const location_type& l)
      {
        return symbol_type (token::TOK_tEQ, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tNEQ (location_type l)
      {
        return symbol_type (token::TOK_tNEQ, std::move (l));
      }
#else
      static
      symbol_type
      make_tNEQ (const location_type& l)
      {
        return symbol_type (token::TOK_tNEQ, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tMOD (location_type l)
      {
        return symbol_type (token::TOK_tMOD, std::move (l));
      }
#else
      static
      symbol_type
      make_tMOD (const location_type& l)
      {
        return symbol_type (token::TOK_tMOD, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tASSIN (location_type l)
      {
        return symbol_type (token::TOK_tASSIN, std::move (l));
      }
#else
      static
      symbol_type
      make_tASSIN (const location_type& l)
      {
        return symbol_type (token::TOK_tASSIN, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tSEMI (location_type l)
      {
        return symbol_type (token::TOK_tSEMI, std::move (l));
      }
#else
      static
      symbol_type
      make_tSEMI (const location_type& l)
      {
        return symbol_type (token::TOK_tSEMI, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tCOMMA (location_type l)
      {
        return symbol_type (token::TOK_tCOMMA, std::move (l));
      }
#else
      static
      symbol_type
      make_tCOMMA (const location_type& l)
      {
        return symbol_type (token::TOK_tCOMMA, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tLPAREN (location_type l)
      {
        return symbol_type (token::TOK_tLPAREN, std::move (l));
      }
#else
      static
      symbol_type
      make_tLPAREN (const location_type& l)
      {
        return symbol_type (token::TOK_tLPAREN, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tRPAREN (location_type l)
      {
        return symbol_type (token::TOK_tRPAREN, std::move (l));
      }
#else
      static
      symbol_type
      make_tRPAREN (const location_type& l)
      {
        return symbol_type (token::TOK_tRPAREN, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tLBRACK (location_type l)
      {
        return symbol_type (token::TOK_tLBRACK, std::move (l));
      }
#else
      static
      symbol_type
      make_tLBRACK (const location_type& l)
      {
        return symbol_type (token::TOK_tLBRACK, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tRBRACK (location_type l)
      {
        return symbol_type (token::TOK_tRBRACK, std::move (l));
      }
#else
      static
      symbol_type
      make_tRBRACK (const location_type& l)
      {
        return symbol_type (token::TOK_tRBRACK, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tLBRACE (location_type l)
      {
        return symbol_type (token::TOK_tLBRACE, std::move (l));
      }
#else
      static
      symbol_type
      make_tLBRACE (const location_type& l)
      {
        return symbol_type (token::TOK_tLBRACE, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tRBRACE (location_type l)
      {
        return symbol_type (token::TOK_tRBRACE, std::move (l));
      }
#else
      static
      symbol_type
      make_tRBRACE (const location_type& l)
      {
        return symbol_type (token::TOK_tRBRACE, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tIF (location_type l)
      {
        return symbol_type (token::TOK_tIF, std::move (l));
      }
#else
      static
      symbol_type
      make_tIF (const location_type& l)
      {
        return symbol_type (token::TOK_tIF, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tELSE (location_type l)
      {
        return symbol_type (token::TOK_tELSE, std::move (l));
      }
#else
      static
      symbol_type
      make_tELSE (const location_type& l)
      {
        return symbol_type (token::TOK_tELSE, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tINT (location_type l)
      {
        return symbol_type (token::TOK_tINT, std::move (l));
      }
#else
      static
      symbol_type
      make_tINT (const location_type& l)
      {
        return symbol_type (token::TOK_tINT, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tVOID (location_type l)
      {
        return symbol_type (token::TOK_tVOID, std::move (l));
      }
#else
      static
      symbol_type
      make_tVOID (const location_type& l)
      {
        return symbol_type (token::TOK_tVOID, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tRETURN (location_type l)
      {
        return symbol_type (token::TOK_tRETURN, std::move (l));
      }
#else
      static
      symbol_type
      make_tRETURN (const location_type& l)
      {
        return symbol_type (token::TOK_tRETURN, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tWHILE (location_type l)
      {
        return symbol_type (token::TOK_tWHILE, std::move (l));
      }
#else
      static
      symbol_type
      make_tWHILE (const location_type& l)
      {
        return symbol_type (token::TOK_tWHILE, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tIDENT (string v, location_type l)
      {
        return symbol_type (token::TOK_tIDENT, std::move (v), std::move (l));
      }
#else
      static
      symbol_type
      make_tIDENT (const string& v, const location_type& l)
      {
        return symbol_type (token::TOK_tIDENT, v, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tNUMBER (int v, location_type l)
      {
        return symbol_type (token::TOK_tNUMBER, std::move (v), std::move (l));
      }
#else
      static
      symbol_type
      make_tNUMBER (const int& v, const location_type& l)
      {
        return symbol_type (token::TOK_tNUMBER, v, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tARRAY (location_type l)
      {
        return symbol_type (token::TOK_tARRAY, std::move (l));
      }
#else
      static
      symbol_type
      make_tARRAY (const location_type& l)
      {
        return symbol_type (token::TOK_tARRAY, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_LETTER (location_type l)
      {
        return symbol_type (token::TOK_LETTER, std::move (l));
      }
#else
      static
      symbol_type
      make_LETTER (const location_type& l)
      {
        return symbol_type (token::TOK_LETTER, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_EOL (location_type l)
      {
        return symbol_type (token::TOK_EOL, std::move (l));
      }
#else
      static
      symbol_type
      make_EOL (const location_type& l)
      {
        return symbol_type (token::TOK_EOL, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_COMMENT (location_type l)
      {
        return symbol_type (token::TOK_COMMENT, std::move (l));
      }
#else
      static
      symbol_type
      make_COMMENT (const location_type& l)
      {
        return symbol_type (token::TOK_COMMENT, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_BLANK (location_type l)
      {
        return symbol_type (token::TOK_BLANK, std::move (l));
      }
#else
      static
      symbol_type
      make_BLANK (const location_type& l)
      {
        return symbol_type (token::TOK_BLANK, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tCONST (location_type l)
      {
        return symbol_type (token::TOK_tCONST, std::move (l));
      }
#else
      static
      symbol_type
      make_tCONST (const location_type& l)
      {
        return symbol_type (token::TOK_tCONST, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tBREAK (location_type l)
      {
        return symbol_type (token::TOK_tBREAK, std::move (l));
      }
#else
      static
      symbol_type
      make_tBREAK (const location_type& l)
      {
        return symbol_type (token::TOK_tBREAK, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tCONTINUE (location_type l)
      {
        return symbol_type (token::TOK_tCONTINUE, std::move (l));
      }
#else
      static
      symbol_type
      make_tCONTINUE (const location_type& l)
      {
        return symbol_type (token::TOK_tCONTINUE, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tAND (location_type l)
      {
        return symbol_type (token::TOK_tAND, std::move (l));
      }
#else
      static
      symbol_type
      make_tAND (const location_type& l)
      {
        return symbol_type (token::TOK_tAND, l);
      }
#endif
#if 201103L <= YY_CPLUSPLUS
      static
      symbol_type
      make_tOR (location_type l)
      {
        return symbol_type (token::TOK_tOR, std::move (l));
      }
#else
      static
      symbol_type
      make_tOR (const location_type& l)
      {
        return symbol_type (token::TOK_tOR, l);
      }
#endif


    class context
    {
    public:
      context (const parser& yyparser, const symbol_type& yyla);
      const symbol_type& lookahead () const YY_NOEXCEPT { return yyla_; }
      symbol_kind_type token () const YY_NOEXCEPT { return yyla_.kind (); }
      const location_type& location () const YY_NOEXCEPT { return yyla_.location; }

      /// Put in YYARG at most YYARGN of the expected tokens, and return the
      /// number of tokens stored in YYARG.  If YYARG is null, return the
      /// number of expected tokens (guaranteed to be less than YYNTOKENS).
      int expected_tokens (symbol_kind_type yyarg[], int yyargn) const;

    private:
      const parser& yyparser_;
      const symbol_type& yyla_;
    };

  private:
#if YY_CPLUSPLUS < 201103L
    /// Non copyable.
    parser (const parser&);
    /// Non copyable.
    parser& operator= (const parser&);
#endif


    /// Stored state numbers (used for stacks).
    typedef unsigned char state_type;

    /// The arguments of the error message.
    int yy_syntax_error_arguments_ (const context& yyctx,
                                    symbol_kind_type yyarg[], int yyargn) const;

    /// Generate an error message.
    /// \param yyctx     the context in which the error occurred.
    virtual std::string yysyntax_error_ (const context& yyctx) const;
    /// Compute post-reduction state.
    /// \param yystate   the current state
    /// \param yysym     the nonterminal to push on the stack
    static state_type yy_lr_goto_state_ (state_type yystate, int yysym);

    /// Whether the given \c yypact_ value indicates a defaulted state.
    /// \param yyvalue   the value to check
    static bool yy_pact_value_is_default_ (int yyvalue);

    /// Whether the given \c yytable_ value indicates a syntax error.
    /// \param yyvalue   the value to check
    static bool yy_table_value_is_error_ (int yyvalue);

    static const short yypact_ninf_;
    static const signed char yytable_ninf_;

    /// Convert a scanner token kind \a t to a symbol kind.
    /// In theory \a t should be a token_kind_type, but character literals
    /// are valid, yet not members of the token_type enum.
    static symbol_kind_type yytranslate_ (int t);

    /// Convert the symbol name \a n to a form suitable for a diagnostic.
    static std::string yytnamerr_ (const char *yystr);

    /// For a symbol, its name in clear.
    static const char* const yytname_[];


    // Tables.
    // YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
    // STATE-NUM.
    static const short yypact_[];

    // YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
    // Performed when YYTABLE does not specify something else to do.  Zero
    // means the default is an error.
    static const signed char yydefact_[];

    // YYPGOTO[NTERM-NUM].
    static const short yypgoto_[];

    // YYDEFGOTO[NTERM-NUM].
    static const unsigned char yydefgoto_[];

    // YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
    // positive, shift that token.  If negative, reduce the rule whose
    // number is the opposite.  If YYTABLE_NINF, syntax error.
    static const unsigned char yytable_[];

    static const short yycheck_[];

    // YYSTOS[STATE-NUM] -- The (internal number of the) accessing
    // symbol of state STATE-NUM.
    static const signed char yystos_[];

    // YYR1[YYN] -- Symbol number of symbol that rule YYN derives.
    static const signed char yyr1_[];

    // YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.
    static const signed char yyr2_[];


#if YYDEBUG
    // YYRLINE[YYN] -- Source line where rule number YYN was defined.
    static const short yyrline_[];
    /// Report on the debug stream that the rule \a r is going to be reduced.
    virtual void yy_reduce_print_ (int r) const;
    /// Print the state stack on the debug stream.
    virtual void yy_stack_print_ () const;

    /// Debugging level.
    int yydebug_;
    /// Debug stream.
    std::ostream* yycdebug_;

    /// \brief Display a symbol kind, value and location.
    /// \param yyo    The output stream.
    /// \param yysym  The symbol.
    template <typename Base>
    void yy_print_ (std::ostream& yyo, const basic_symbol<Base>& yysym) const;
#endif

    /// \brief Reclaim the memory associated to a symbol.
    /// \param yymsg     Why this token is reclaimed.
    ///                  If null, print nothing.
    /// \param yysym     The symbol.
    template <typename Base>
    void yy_destroy_ (const char* yymsg, basic_symbol<Base>& yysym) const;

  private:
    /// Type access provider for state based symbols.
    struct by_state
    {
      /// Default constructor.
      by_state () YY_NOEXCEPT;

      /// The symbol kind as needed by the constructor.
      typedef state_type kind_type;

      /// Constructor.
      by_state (kind_type s) YY_NOEXCEPT;

      /// Copy constructor.
      by_state (const by_state& that) YY_NOEXCEPT;

      /// Record that this symbol is empty.
      void clear () YY_NOEXCEPT;

      /// Steal the symbol kind from \a that.
      void move (by_state& that);

      /// The symbol kind (corresponding to \a state).
      /// \a symbol_kind::S_YYEMPTY when empty.
      symbol_kind_type kind () const YY_NOEXCEPT;

      /// The state number used to denote an empty symbol.
      /// We use the initial state, as it does not have a value.
      enum { empty_state = 0 };

      /// The state.
      /// \a empty when empty.
      state_type state;
    };

    /// "Internal" symbol: element of the stack.
    struct stack_symbol_type : basic_symbol<by_state>
    {
      /// Superclass.
      typedef basic_symbol<by_state> super_type;
      /// Construct an empty symbol.
      stack_symbol_type ();
      /// Move or copy construction.
      stack_symbol_type (YY_RVREF (stack_symbol_type) that);
      /// Steal the contents from \a sym to build this.
      stack_symbol_type (state_type s, YY_MOVE_REF (symbol_type) sym);
#if YY_CPLUSPLUS < 201103L
      /// Assignment, needed by push_back by some old implementations.
      /// Moves the contents of that.
      stack_symbol_type& operator= (stack_symbol_type& that);

      /// Assignment, needed by push_back by other implementations.
      /// Needed by some other old implementations.
      stack_symbol_type& operator= (const stack_symbol_type& that);
#endif
    };

    /// A stack with random access from its top.
    template <typename T, typename S = std::vector<T> >
    class stack
    {
    public:
      // Hide our reversed order.
      typedef typename S::iterator iterator;
      typedef typename S::const_iterator const_iterator;
      typedef typename S::size_type size_type;
      typedef typename std::ptrdiff_t index_type;

      stack (size_type n = 200)
        : seq_ (n)
      {}

#if 201103L <= YY_CPLUSPLUS
      /// Non copyable.
      stack (const stack&) = delete;
      /// Non copyable.
      stack& operator= (const stack&) = delete;
#endif

      /// Random access.
      ///
      /// Index 0 returns the topmost element.
      const T&
      operator[] (index_type i) const
      {
        return seq_[size_type (size () - 1 - i)];
      }

      /// Random access.
      ///
      /// Index 0 returns the topmost element.
      T&
      operator[] (index_type i)
      {
        return seq_[size_type (size () - 1 - i)];
      }

      /// Steal the contents of \a t.
      ///
      /// Close to move-semantics.
      void
      push (YY_MOVE_REF (T) t)
      {
        seq_.push_back (T ());
        operator[] (0).move (t);
      }

      /// Pop elements from the stack.
      void
      pop (std::ptrdiff_t n = 1) YY_NOEXCEPT
      {
        for (; 0 < n; --n)
          seq_.pop_back ();
      }

      /// Pop all elements from the stack.
      void
      clear () YY_NOEXCEPT
      {
        seq_.clear ();
      }

      /// Number of elements on the stack.
      index_type
      size () const YY_NOEXCEPT
      {
        return index_type (seq_.size ());
      }

      /// Iterator on top of the stack (going downwards).
      const_iterator
      begin () const YY_NOEXCEPT
      {
        return seq_.begin ();
      }

      /// Bottom of the stack.
      const_iterator
      end () const YY_NOEXCEPT
      {
        return seq_.end ();
      }

      /// Present a slice of the top of a stack.
      class slice
      {
      public:
        slice (const stack& stack, index_type range)
          : stack_ (stack)
          , range_ (range)
        {}

        const T&
        operator[] (index_type i) const
        {
          return stack_[range_ - i];
        }

      private:
        const stack& stack_;
        index_type range_;
      };

    private:
#if YY_CPLUSPLUS < 201103L
      /// Non copyable.
      stack (const stack&);
      /// Non copyable.
      stack& operator= (const stack&);
#endif
      /// The wrapped container.
      S seq_;
    };


    /// Stack type.
    typedef stack<stack_symbol_type> stack_type;

    /// The stack.
    stack_type yystack_;

    /// Push a new state on the stack.
    /// \param m    a debug message to display
    ///             if null, no trace is output.
    /// \param sym  the symbol
    /// \warning the contents of \a s.value is stolen.
    void yypush_ (const char* m, YY_MOVE_REF (stack_symbol_type) sym);

    /// Push a new look ahead token on the state on the stack.
    /// \param m    a debug message to display
    ///             if null, no trace is output.
    /// \param s    the state
    /// \param sym  the symbol (for its value and location).
    /// \warning the contents of \a sym.value is stolen.
    void yypush_ (const char* m, state_type s, YY_MOVE_REF (symbol_type) sym);

    /// Pop \a n symbols from the stack.
    void yypop_ (int n = 1);

    /// Constants.
    enum
    {
      yylast_ = 216,     ///< Last index in yytable_.
      yynnts_ = 46,  ///< Number of nonterminal symbols.
      yyfinal_ = 11 ///< Termination state number.
    };


    // User arguments.
    fdriver& driver;

  };

  inline
  parser::symbol_kind_type
  parser::yytranslate_ (int t)
  {
    // YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to
    // TOKEN-NUM as returned by yylex.
    static
    const signed char
    translate_table[] =
    {
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43
    };
    // Last valid token kind.
    const int code_max = 298;

    if (t <= 0)
      return symbol_kind::S_YYEOF;
    else if (t <= code_max)
      return YY_CAST (symbol_kind_type, translate_table[t]);
    else
      return symbol_kind::S_YYUNDEF;
  }

  // basic_symbol.
  template <typename Base>
  parser::basic_symbol<Base>::basic_symbol (const basic_symbol& that)
    : Base (that)
    , value ()
    , location (that.location)
  {
    switch (this->kind ())
    {
      case symbol_kind::S_AddExp: // AddExp
        value.copy< TreeNodeAddExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.copy< TreeNodeArrayConstExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.copy< TreeNodeArrayExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.copy< TreeNodeAssignStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Block: // Block
        value.copy< TreeNodeBlock* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.copy< TreeNodeBlockItem* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.copy< TreeNodeBlockItemList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.copy< TreeNodeBreakStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Callee: // Callee
        value.copy< TreeNodeCallee* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Cond: // Cond
        value.copy< TreeNodeCond* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.copy< TreeNodeConstDecl* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.copy< TreeNodeConstDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.copy< TreeNodeConstDefList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.copy< TreeNodeConstExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.copy< TreeNodeConstInitVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.copy< TreeNodeConstInitValList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.copy< TreeNodeContinueStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.copy< TreeNodeDeclDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.copy< TreeNodeEqExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Exp: // Exp
        value.copy< TreeNodeExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ExpList: // ExpList
        value.copy< TreeNodeExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.copy< TreeNodeFuncDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.copy< TreeNodeFuncFParam* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.copy< TreeNodeFuncFParamList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.copy< TreeNodeIfStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.copy< TreeNodeInitVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.copy< TreeNodeInitValList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.copy< TreeNodeLAndExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.copy< TreeNodeLOrExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_LVal: // LVal
        value.copy< TreeNodeLVal* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.copy< TreeNodeMulExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Number: // Number
        value.copy< TreeNodeNumber* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.copy< TreeNodeParamArrayExpList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.copy< TreeNodePrimaryExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.copy< TreeNodeRelExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.copy< TreeNodeReturnStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.copy< TreeNodeStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.copy< TreeNodeTopLevel* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.copy< TreeNodeUnaryExp* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.copy< TreeNodeVarDecl* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.copy< TreeNodeVarDef* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.copy< TreeNodeVarDefList* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.copy< TreeNodeWhileStmt* > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.copy< int > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.copy< string > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_DefType: // DefType
        value.copy< typeFunc > (YY_MOVE (that.value));
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.copy< unaryop > (YY_MOVE (that.value));
        break;

      default:
        break;
    }

  }



  template <typename Base>
  parser::symbol_kind_type
  parser::basic_symbol<Base>::type_get () const YY_NOEXCEPT
  {
    return this->kind ();
  }

  template <typename Base>
  bool
  parser::basic_symbol<Base>::empty () const YY_NOEXCEPT
  {
    return this->kind () == symbol_kind::S_YYEMPTY;
  }

  template <typename Base>
  void
  parser::basic_symbol<Base>::move (basic_symbol& s)
  {
    super_type::move (s);
    switch (this->kind ())
    {
      case symbol_kind::S_AddExp: // AddExp
        value.move< TreeNodeAddExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ArrayConstExpList: // ArrayConstExpList
        value.move< TreeNodeArrayConstExpList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ArrayExpList: // ArrayExpList
        value.move< TreeNodeArrayExpList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_AssignStmt: // AssignStmt
        value.move< TreeNodeAssignStmt* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_Block: // Block
        value.move< TreeNodeBlock* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_BlockItem: // BlockItem
        value.move< TreeNodeBlockItem* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_BlockItemList: // BlockItemList
        value.move< TreeNodeBlockItemList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_BreakStmt: // BreakStmt
        value.move< TreeNodeBreakStmt* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_Callee: // Callee
        value.move< TreeNodeCallee* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_Cond: // Cond
        value.move< TreeNodeCond* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ConstDecl: // ConstDecl
        value.move< TreeNodeConstDecl* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ConstDef: // ConstDef
        value.move< TreeNodeConstDef* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ConstDefList: // ConstDefList
        value.move< TreeNodeConstDefList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ConstExp: // ConstExp
        value.move< TreeNodeConstExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ConstInitVal: // ConstInitVal
        value.move< TreeNodeConstInitVal* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ConstInitValList: // ConstInitValList
        value.move< TreeNodeConstInitValList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ContinueStmt: // ContinueStmt
        value.move< TreeNodeContinueStmt* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_DeclDef: // DeclDef
        value.move< TreeNodeDeclDef* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_EqExp: // EqExp
        value.move< TreeNodeEqExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_Exp: // Exp
        value.move< TreeNodeExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ExpList: // ExpList
        value.move< TreeNodeExpList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_FuncDef: // FuncDef
        value.move< TreeNodeFuncDef* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_FuncFParam: // FuncFParam
        value.move< TreeNodeFuncFParam* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_FuncFParamList: // FuncFParamList
        value.move< TreeNodeFuncFParamList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_IfStmt: // IfStmt
        value.move< TreeNodeIfStmt* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_InitVal: // InitVal
        value.move< TreeNodeInitVal* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_InitValList: // InitValList
        value.move< TreeNodeInitValList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_LAndExp: // LAndExp
        value.move< TreeNodeLAndExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_LOrExp: // LOrExp
        value.move< TreeNodeLOrExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_LVal: // LVal
        value.move< TreeNodeLVal* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_MulExp: // MulExp
        value.move< TreeNodeMulExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_Number: // Number
        value.move< TreeNodeNumber* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ParamArrayExpList: // ParamArrayExpList
        value.move< TreeNodeParamArrayExpList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_PrimaryExp: // PrimaryExp
        value.move< TreeNodePrimaryExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_RelExp: // RelExp
        value.move< TreeNodeRelExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_ReturnStmt: // ReturnStmt
        value.move< TreeNodeReturnStmt* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_Stmt: // Stmt
        value.move< TreeNodeStmt* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_TopLevel: // TopLevel
        value.move< TreeNodeTopLevel* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_UnaryExp: // UnaryExp
        value.move< TreeNodeUnaryExp* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_VarDecl: // VarDecl
        value.move< TreeNodeVarDecl* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_VarDef: // VarDef
        value.move< TreeNodeVarDef* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_VarDefList: // VarDefList
        value.move< TreeNodeVarDefList* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_WhileStmt: // WhileStmt
        value.move< TreeNodeWhileStmt* > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_tNUMBER: // tNUMBER
        value.move< int > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_tIDENT: // tIDENT
        value.move< string > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_DefType: // DefType
        value.move< typeFunc > (YY_MOVE (s.value));
        break;

      case symbol_kind::S_UnaryOp: // UnaryOp
        value.move< unaryop > (YY_MOVE (s.value));
        break;

      default:
        break;
    }

    location = YY_MOVE (s.location);
  }

  // by_kind.
  inline
  parser::by_kind::by_kind ()
    : kind_ (symbol_kind::S_YYEMPTY)
  {}

#if 201103L <= YY_CPLUSPLUS
  inline
  parser::by_kind::by_kind (by_kind&& that)
    : kind_ (that.kind_)
  {
    that.clear ();
  }
#endif

  inline
  parser::by_kind::by_kind (const by_kind& that)
    : kind_ (that.kind_)
  {}

  inline
  parser::by_kind::by_kind (token_kind_type t)
    : kind_ (yytranslate_ (t))
  {}

  inline
  void
  parser::by_kind::clear () YY_NOEXCEPT
  {
    kind_ = symbol_kind::S_YYEMPTY;
  }

  inline
  void
  parser::by_kind::move (by_kind& that)
  {
    kind_ = that.kind_;
    that.clear ();
  }

  inline
  parser::symbol_kind_type
  parser::by_kind::kind () const YY_NOEXCEPT
  {
    return kind_;
  }

  inline
  parser::symbol_kind_type
  parser::by_kind::type_get () const YY_NOEXCEPT
  {
    return this->kind ();
  }

} // yy
#line 3555 "parser.tab.hh"




#endif // !YY_YY_PARSER_TAB_HH_INCLUDED
