#pragma once

#include <fstream>
#include <string>
#include <map>
#include "parser.hh"
#include "syFlexLexer.hh"

using namespace std;

class fdriver
{
public:
    fdriver ();
    virtual ~fdriver ();
    string file;
    syFlexLexer lexer;
    ifstream instream;
    TreeNodeTopLevel* root = nullptr;
    map<string, int> variables;

    TreeNodeTopLevel* parse (const string& f);
    void error (const string& m);
    void error (const yy::location& l, const string& m);
};