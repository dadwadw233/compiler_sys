%{
#include <iostream>
#include <cerrno>
#include <climits>
#include <cstdlib>
#include <string>

#include "fdriver.hh"
#include "parser.tab.hh"

using namespace std;

# undef yywrap
# define yywrap() 1

#define YY_NO_UNISTD_H

#define  YYPAR yy::parser

extern fdriver driver;

const bool checkScan = false;
int Dec2Dec(char temp[]);
int Oct2Dec(char temp[]);
int Hex2Dec(char temp[]);
%}
%option noyywrap nounput batch debug noinput

/*数字定义*/
/*十进制*/
decimal (0|[1-9][0-9]*)
/*十六进制*/
hexadecimal 0[xX][a-fA-F0-9]
/*八进制*/
octal 0[0-7]
/*总表示*/
Number {decimal}|{hexadecimal}|{octal}

/*关键字*/
CONST const
INT int
VOID void
IF if
ELSE else
WHILE while
BREAK break
CONTINUE continue
RETURN return

/* 注释 */
Comments   "/*"([^\*]|(\*)*[^\*/])*(\*)*"*/"				
Comment    "//".*$				

/* 标识符 */
ident		[a-zA-Z_][a-zA-Z0-9_]*						

%%
{INT} {
    if(checkScan) cout << "INT\t_" << endl;
    return YYPAR ::make_tINT(loc);
}
{VOID} 		{
    if(checkScan) cout << "VOID\t_" << endl;
    return YYPAR ::make_tVOID(loc);
}
{RETURN} {
    if(checkScan) cout << "RETURN\t_" << endl;
    return YYPAR ::make_tRETURN(loc);
}
{IF} {
    if(checkScan) cout << "IF\t_" << endl;
    return YYPAR ::make_tIF(loc);
}
{ELSE} {
    if(checkScan) cout << "ELSE\t_" << endl;
    return YYPAR ::make_tELSE(loc);
}
{WHILE} {
    if(checkScan) cout << "WHIEL\t_" << endl;
    return YYPAR ::make_tWHILE(loc);
}
{CONST}		{
    if(checkScan) cout << "CONST\t_" << endl;
    return YYPAR ::make_tCONST(loc);
}
{BREAK}		{
    if(checkScan) cout << "BREAK\t_" << endl;
    return YYPAR ::make_tBREAK(loc);
}
{CONTINUE} 	{
    if(checkScan) cout << "CONTINUE\t_" << endl;
    return YYPAR ::make_tCONTINUE(loc);
}

	/**special_symbol**/
[+] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tADD(loc);
}
[-] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tSUB(loc);
}
[*] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tMUL(loc);
}
[/] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tDIV(loc);
}
[%]	{
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tMOD(loc);
}
[<] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tLT(loc);
}		
"<=" {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tLTE(loc);
}
[>] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tGT(loc);
}
">=" {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tGTE(loc);
}
"==" {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tEQ(loc);
}
"!=" {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tNEQ(loc);
}
[!]	{
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tNOT(loc);
}		
"&&" {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tAND(loc);
}		
"\|\|" {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tOR(loc);
}		
[=] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tASSIGN(loc);
}
[;] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tSEMI(loc);
}
[,] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tCOMMA(loc);
}
[(] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tLPAREN(loc);
}
[)] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tRPAREN(loc);
}
[[] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tLBRACK(loc);
} 
[]] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tRBRACK(loc);
}
[{] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tLBRACE(loc);
}
[}] {
    if(checkScan) cout << yytext << "\t_" << endl;
    return YYPAR ::make_tRBRACE(loc);
}

[ \t\n\f] 	{
    ;
}
"[]" {
    if(checkScan) cout << "ARRAY\t_" << endl;
    return YYPAR ::make_tARRAY(loc);
}
{Comment} {
    if(checkScan) cout << "COMMENT" << endl;
}
{Comments} {
    if(checkScan) cout << "COMMENTS" << endl;
}
{ident} {
    if(checkScan) cout << yytext << "\tID" << endl;
    return YYPAR ::make_tIDENT(driver.lexer.YYText(), loc);
}
{decimal} {
    if(checkScan)
        cout << "INT10\t" << Dec2Dec(yytext) << endl;
    return YYPAR ::make_tNUMBER(stoi(driver.lexer.YYText(),nullptr,0),loc);
}
{octal}   {
    if(checkScan)
        cout << "INT8\t" << Oct2Dec(yytext) << endl;
    return YYPAR ::make_tNUMBER(stoi(driver.lexer.YYText(),nullptr,0),loc);
}
{hexadecimal} {
    if(checkScan)
        cout << "INT16\t" << Hex2Dec(yytext) << endl;
    return YYPAR ::make_tNUMBER(stoi(driver.lexer.YYText(),nullptr,0),loc);
}
<<EOF>> {
    return YYPAR ::make_tEND(loc);
}

%%

int yyFlexLexer::yylex() {
    std::cerr << "'int yyFlexLexer::yylex()' should never be called." << std::endl;
    exit(1);
}
