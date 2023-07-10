#pragma once

#ifndef YY_DECL
#define YY_DECL                                                         \
    yy::parser::symbol_type syFlexLexer::yylex(fdriver& driver)
#endif
#undef yyFlexLexer

#include <FlexLexer.h>
#include "parser.tab.hh"
#include "location.hh"

class syFlexLexer : public yyFlexLexer {
public:
    using yyFlexLexer::yyFlexLexer;
    yy::parser::symbol_type yylex(fdriver& driver);
    yy::location loc;
};