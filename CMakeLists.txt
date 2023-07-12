cmake_minimum_required(VERSION 3.16)
SET(CMAKE_CXX_COMPILER /usr/bin/clang)
project(MyCompiler)

set(CMAKE_CXX_STANDARD 17)
SET(CMAKE_BUILD_TYPE "Debug")
SET(CMAKE_CXX_FLAGS "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

# Import LLVM
set(LLVM_DIR  /usr/lib/llvm-10/cmake/)
find_package(LLVM REQUIRED CONFIG)
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")
llvm_map_components_to_libnames(
        llvm_libs
        all
)

include_directories(${LLVM_INCLUDE_DIRS})
add_definitions(${LLVM_DEFINITIONS})

include_directories(include/front)
include_directories(include/ast)
include_directories(include/llvm-back)

add_subdirectory(src/front)
add_subdirectory(src/ast)
add_subdirectory(src/llvm-back)



