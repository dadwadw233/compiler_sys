add_executable(
        llvm-sysyc
        llvm-main.cpp
        llvmBuilder.cpp
)

add_library(
        monkey
        runParser.cc
)

add_library(sysy_io sylib.c)

install(
        TARGETS sysy_io
        ARCHIVE DESTINATION lib
)
#SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
target_compile_options(
        llvm-sysyc
        PRIVATE "-fno-rtti"
)

target_link_libraries(
        llvm-sysyc
        monkey
        fdriver
        ast
        LLVM
)

install(
        TARGETS llvm-sysyc
        RUNTIME DESTINATION bin
)

