# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /root/.cache/JetBrains/RemoteDev/dist/6c3ff81b1df74_CLion-232.7295.14/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /root/.cache/JetBrains/RemoteDev/dist/6c3ff81b1df74_CLion-232.7295.14/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/yyh/course/compilation/workplace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/yyh/course/compilation/workplace/cmake-build-debug

# Include any dependencies generated for this target.
include src/llvm-builder/CMakeFiles/sysy_io.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/llvm-builder/CMakeFiles/sysy_io.dir/compiler_depend.make

# Include the progress variables for this target.
include src/llvm-builder/CMakeFiles/sysy_io.dir/progress.make

# Include the compile flags for this target's objects.
include src/llvm-builder/CMakeFiles/sysy_io.dir/flags.make

src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.o: src/llvm-builder/CMakeFiles/sysy_io.dir/flags.make
src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.o: /home/yyh/course/compilation/workplace/src/llvm-builder/sylib.c
src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.o: src/llvm-builder/CMakeFiles/sysy_io.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/yyh/course/compilation/workplace/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.o"
	cd /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.o -MF CMakeFiles/sysy_io.dir/sylib.c.o.d -o CMakeFiles/sysy_io.dir/sylib.c.o -c /home/yyh/course/compilation/workplace/src/llvm-builder/sylib.c

src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysy_io.dir/sylib.c.i"
	cd /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/yyh/course/compilation/workplace/src/llvm-builder/sylib.c > CMakeFiles/sysy_io.dir/sylib.c.i

src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysy_io.dir/sylib.c.s"
	cd /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/yyh/course/compilation/workplace/src/llvm-builder/sylib.c -o CMakeFiles/sysy_io.dir/sylib.c.s

# Object files for target sysy_io
sysy_io_OBJECTS = \
"CMakeFiles/sysy_io.dir/sylib.c.o"

# External object files for target sysy_io
sysy_io_EXTERNAL_OBJECTS =

src/llvm-builder/libsysy_io.a: src/llvm-builder/CMakeFiles/sysy_io.dir/sylib.c.o
src/llvm-builder/libsysy_io.a: src/llvm-builder/CMakeFiles/sysy_io.dir/build.make
src/llvm-builder/libsysy_io.a: src/llvm-builder/CMakeFiles/sysy_io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/yyh/course/compilation/workplace/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library libsysy_io.a"
	cd /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder && $(CMAKE_COMMAND) -P CMakeFiles/sysy_io.dir/cmake_clean_target.cmake
	cd /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sysy_io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/llvm-builder/CMakeFiles/sysy_io.dir/build: src/llvm-builder/libsysy_io.a
.PHONY : src/llvm-builder/CMakeFiles/sysy_io.dir/build

src/llvm-builder/CMakeFiles/sysy_io.dir/clean:
	cd /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder && $(CMAKE_COMMAND) -P CMakeFiles/sysy_io.dir/cmake_clean.cmake
.PHONY : src/llvm-builder/CMakeFiles/sysy_io.dir/clean

src/llvm-builder/CMakeFiles/sysy_io.dir/depend:
	cd /home/yyh/course/compilation/workplace/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/yyh/course/compilation/workplace /home/yyh/course/compilation/workplace/src/llvm-builder /home/yyh/course/compilation/workplace/cmake-build-debug /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder /home/yyh/course/compilation/workplace/cmake-build-debug/src/llvm-builder/CMakeFiles/sysy_io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/llvm-builder/CMakeFiles/sysy_io.dir/depend

