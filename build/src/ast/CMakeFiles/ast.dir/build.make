# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/axz/桌面/SysY2020/myself_v3.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/axz/桌面/SysY2020/myself_v3.0/build

# Include any dependencies generated for this target.
include src/ast/CMakeFiles/ast.dir/depend.make

# Include the progress variables for this target.
include src/ast/CMakeFiles/ast.dir/progress.make

# Include the compile flags for this target's objects.
include src/ast/CMakeFiles/ast.dir/flags.make

src/ast/CMakeFiles/ast.dir/ast.cc.o: src/ast/CMakeFiles/ast.dir/flags.make
src/ast/CMakeFiles/ast.dir/ast.cc.o: ../src/ast/ast.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/axz/桌面/SysY2020/myself_v3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/ast/CMakeFiles/ast.dir/ast.cc.o"
	cd /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast && /usr/bin/clang++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ast.dir/ast.cc.o -c /home/axz/桌面/SysY2020/myself_v3.0/src/ast/ast.cc

src/ast/CMakeFiles/ast.dir/ast.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ast.dir/ast.cc.i"
	cd /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/axz/桌面/SysY2020/myself_v3.0/src/ast/ast.cc > CMakeFiles/ast.dir/ast.cc.i

src/ast/CMakeFiles/ast.dir/ast.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ast.dir/ast.cc.s"
	cd /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast && /usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/axz/桌面/SysY2020/myself_v3.0/src/ast/ast.cc -o CMakeFiles/ast.dir/ast.cc.s

# Object files for target ast
ast_OBJECTS = \
"CMakeFiles/ast.dir/ast.cc.o"

# External object files for target ast
ast_EXTERNAL_OBJECTS =

src/ast/libast.a: src/ast/CMakeFiles/ast.dir/ast.cc.o
src/ast/libast.a: src/ast/CMakeFiles/ast.dir/build.make
src/ast/libast.a: src/ast/CMakeFiles/ast.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/axz/桌面/SysY2020/myself_v3.0/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libast.a"
	cd /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast && $(CMAKE_COMMAND) -P CMakeFiles/ast.dir/cmake_clean_target.cmake
	cd /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ast.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/ast/CMakeFiles/ast.dir/build: src/ast/libast.a

.PHONY : src/ast/CMakeFiles/ast.dir/build

src/ast/CMakeFiles/ast.dir/clean:
	cd /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast && $(CMAKE_COMMAND) -P CMakeFiles/ast.dir/cmake_clean.cmake
.PHONY : src/ast/CMakeFiles/ast.dir/clean

src/ast/CMakeFiles/ast.dir/depend:
	cd /home/axz/桌面/SysY2020/myself_v3.0/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/axz/桌面/SysY2020/myself_v3.0 /home/axz/桌面/SysY2020/myself_v3.0/src/ast /home/axz/桌面/SysY2020/myself_v3.0/build /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast /home/axz/桌面/SysY2020/myself_v3.0/build/src/ast/CMakeFiles/ast.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/ast/CMakeFiles/ast.dir/depend

