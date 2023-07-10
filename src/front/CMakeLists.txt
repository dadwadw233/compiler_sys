#add_executable(
#        SYSYC_AST
#        sysy.cc
#)

add_library(
        fdriver
        fdriver.cc
)

add_library(
        scan STATIC
        lex.yy.cc
)

add_library(
        parser STATIC
        parser.cc
)

target_link_libraries(
        fdriver
        parser
        scan
        ast
)