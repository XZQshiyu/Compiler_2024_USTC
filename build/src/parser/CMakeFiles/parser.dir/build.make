# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/llh/bianyi/Compiler_2024_USTC

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/llh/bianyi/Compiler_2024_USTC/build

# Include any dependencies generated for this target.
include src/parser/CMakeFiles/parser.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/parser/CMakeFiles/parser.dir/compiler_depend.make

# Include the progress variables for this target.
include src/parser/CMakeFiles/parser.dir/progress.make

# Include the compile flags for this target's objects.
include src/parser/CMakeFiles/parser.dir/flags.make

src/parser/CMakeFiles/parser.dir/parser.c.o: src/parser/CMakeFiles/parser.dir/flags.make
src/parser/CMakeFiles/parser.dir/parser.c.o: ../src/parser/parser.c
src/parser/CMakeFiles/parser.dir/parser.c.o: src/parser/CMakeFiles/parser.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/llh/bianyi/Compiler_2024_USTC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/parser/CMakeFiles/parser.dir/parser.c.o"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/parser && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/parser/CMakeFiles/parser.dir/parser.c.o -MF CMakeFiles/parser.dir/parser.c.o.d -o CMakeFiles/parser.dir/parser.c.o -c /home/llh/bianyi/Compiler_2024_USTC/src/parser/parser.c

src/parser/CMakeFiles/parser.dir/parser.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/parser.dir/parser.c.i"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/parser && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/llh/bianyi/Compiler_2024_USTC/src/parser/parser.c > CMakeFiles/parser.dir/parser.c.i

src/parser/CMakeFiles/parser.dir/parser.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/parser.dir/parser.c.s"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/parser && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/llh/bianyi/Compiler_2024_USTC/src/parser/parser.c -o CMakeFiles/parser.dir/parser.c.s

# Object files for target parser
parser_OBJECTS = \
"CMakeFiles/parser.dir/parser.c.o"

# External object files for target parser
parser_EXTERNAL_OBJECTS =

parser: src/parser/CMakeFiles/parser.dir/parser.c.o
parser: src/parser/CMakeFiles/parser.dir/build.make
parser: libsyntax.a
parser: libcommon.a
parser: src/parser/CMakeFiles/parser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/llh/bianyi/Compiler_2024_USTC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../parser"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/parser && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/parser.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/parser/CMakeFiles/parser.dir/build: parser
.PHONY : src/parser/CMakeFiles/parser.dir/build

src/parser/CMakeFiles/parser.dir/clean:
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/parser && $(CMAKE_COMMAND) -P CMakeFiles/parser.dir/cmake_clean.cmake
.PHONY : src/parser/CMakeFiles/parser.dir/clean

src/parser/CMakeFiles/parser.dir/depend:
	cd /home/llh/bianyi/Compiler_2024_USTC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llh/bianyi/Compiler_2024_USTC /home/llh/bianyi/Compiler_2024_USTC/src/parser /home/llh/bianyi/Compiler_2024_USTC/build /home/llh/bianyi/Compiler_2024_USTC/build/src/parser /home/llh/bianyi/Compiler_2024_USTC/build/src/parser/CMakeFiles/parser.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/parser/CMakeFiles/parser.dir/depend

