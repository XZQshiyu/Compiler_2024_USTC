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
include src/io/CMakeFiles/sysy_io.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/io/CMakeFiles/sysy_io.dir/compiler_depend.make

# Include the progress variables for this target.
include src/io/CMakeFiles/sysy_io.dir/progress.make

# Include the compile flags for this target's objects.
include src/io/CMakeFiles/sysy_io.dir/flags.make

src/io/CMakeFiles/sysy_io.dir/io.c.o: src/io/CMakeFiles/sysy_io.dir/flags.make
src/io/CMakeFiles/sysy_io.dir/io.c.o: ../src/io/io.c
src/io/CMakeFiles/sysy_io.dir/io.c.o: src/io/CMakeFiles/sysy_io.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/llh/bianyi/Compiler_2024_USTC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object src/io/CMakeFiles/sysy_io.dir/io.c.o"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/io && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT src/io/CMakeFiles/sysy_io.dir/io.c.o -MF CMakeFiles/sysy_io.dir/io.c.o.d -o CMakeFiles/sysy_io.dir/io.c.o -c /home/llh/bianyi/Compiler_2024_USTC/src/io/io.c

src/io/CMakeFiles/sysy_io.dir/io.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/sysy_io.dir/io.c.i"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/io && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/llh/bianyi/Compiler_2024_USTC/src/io/io.c > CMakeFiles/sysy_io.dir/io.c.i

src/io/CMakeFiles/sysy_io.dir/io.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/sysy_io.dir/io.c.s"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/io && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/llh/bianyi/Compiler_2024_USTC/src/io/io.c -o CMakeFiles/sysy_io.dir/io.c.s

# Object files for target sysy_io
sysy_io_OBJECTS = \
"CMakeFiles/sysy_io.dir/io.c.o"

# External object files for target sysy_io
sysy_io_EXTERNAL_OBJECTS =

libsysy_io.a: src/io/CMakeFiles/sysy_io.dir/io.c.o
libsysy_io.a: src/io/CMakeFiles/sysy_io.dir/build.make
libsysy_io.a: src/io/CMakeFiles/sysy_io.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/llh/bianyi/Compiler_2024_USTC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C static library ../../libsysy_io.a"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/io && $(CMAKE_COMMAND) -P CMakeFiles/sysy_io.dir/cmake_clean_target.cmake
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/io && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sysy_io.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/io/CMakeFiles/sysy_io.dir/build: libsysy_io.a
.PHONY : src/io/CMakeFiles/sysy_io.dir/build

src/io/CMakeFiles/sysy_io.dir/clean:
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/io && $(CMAKE_COMMAND) -P CMakeFiles/sysy_io.dir/cmake_clean.cmake
.PHONY : src/io/CMakeFiles/sysy_io.dir/clean

src/io/CMakeFiles/sysy_io.dir/depend:
	cd /home/llh/bianyi/Compiler_2024_USTC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llh/bianyi/Compiler_2024_USTC /home/llh/bianyi/Compiler_2024_USTC/src/io /home/llh/bianyi/Compiler_2024_USTC/build /home/llh/bianyi/Compiler_2024_USTC/build/src/io /home/llh/bianyi/Compiler_2024_USTC/build/src/io/CMakeFiles/sysy_io.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/io/CMakeFiles/sysy_io.dir/depend

