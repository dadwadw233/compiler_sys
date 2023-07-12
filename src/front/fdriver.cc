#include "fdriver.hh"
#include "parser.tab.hh"

fdriver::fdriver () {}

fdriver::~fdriver () {}

TreeNodeTopLevel* fdriver::parse (const string &f)
{
    file = f;
    instream.open(file);
    if( instream.good() ) {
        lexer.switch_streams(&instream, 0);
    } 
    else {
        exit (EXIT_FAILURE);
    }
    yy::parser parser (*this);
    parser.parse ();
    instream.close();
    return this->root;
}

void fdriver::error (const string& m)
{
    cerr << m << endl;
}

void fdriver::error (const yy::location& l, const string& m)
{
    cerr << l << ": " << m << endl;
}