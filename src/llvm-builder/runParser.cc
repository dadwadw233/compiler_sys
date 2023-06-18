#include "fdriver.hh"
#include "ast.hpp"

TreeNodeTopLevel *runParser(const std::string filename){
    fdriver driver;
    return driver.parse(filename);
}
