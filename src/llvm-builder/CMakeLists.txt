add_executable(
        naive-compiler
        llvm-main.cpp
        llvmBuilder.cpp
)

#add_library(
 #       monkey
 #       runParser.cc
#)

#SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
#target_compile_options(
 #       naive-compiler
  #      PRIVATE "-fno-rtti"
#)

target_link_libraries(
        naive-compiler
        fdriver
        ast
        LLVM
)

install(
        TARGETS naive-compiler
        RUNTIME DESTINATION bin
)

# add_library(sysy_io sylib.c)


