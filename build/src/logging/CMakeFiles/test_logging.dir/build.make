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
include src/logging/CMakeFiles/test_logging.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/logging/CMakeFiles/test_logging.dir/compiler_depend.make

# Include the progress variables for this target.
include src/logging/CMakeFiles/test_logging.dir/progress.make

# Include the compile flags for this target's objects.
include src/logging/CMakeFiles/test_logging.dir/flags.make

src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.o: src/logging/CMakeFiles/test_logging.dir/flags.make
src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.o: ../src/logging/test_logging.cpp
src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.o: src/logging/CMakeFiles/test_logging.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/llh/bianyi/Compiler_2024_USTC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.o"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/logging && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.o -MF CMakeFiles/test_logging.dir/test_logging.cpp.o.d -o CMakeFiles/test_logging.dir/test_logging.cpp.o -c /home/llh/bianyi/Compiler_2024_USTC/src/logging/test_logging.cpp

src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_logging.dir/test_logging.cpp.i"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/logging && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/llh/bianyi/Compiler_2024_USTC/src/logging/test_logging.cpp > CMakeFiles/test_logging.dir/test_logging.cpp.i

src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_logging.dir/test_logging.cpp.s"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/logging && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/llh/bianyi/Compiler_2024_USTC/src/logging/test_logging.cpp -o CMakeFiles/test_logging.dir/test_logging.cpp.s

# Object files for target test_logging
test_logging_OBJECTS = \
"CMakeFiles/test_logging.dir/test_logging.cpp.o"

# External object files for target test_logging
test_logging_EXTERNAL_OBJECTS =

test_logging: src/logging/CMakeFiles/test_logging.dir/test_logging.cpp.o
test_logging: src/logging/CMakeFiles/test_logging.dir/build.make
test_logging: libcommon.a
test_logging: src/logging/CMakeFiles/test_logging.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/llh/bianyi/Compiler_2024_USTC/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../test_logging"
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/logging && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_logging.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/logging/CMakeFiles/test_logging.dir/build: test_logging
.PHONY : src/logging/CMakeFiles/test_logging.dir/build

src/logging/CMakeFiles/test_logging.dir/clean:
	cd /home/llh/bianyi/Compiler_2024_USTC/build/src/logging && $(CMAKE_COMMAND) -P CMakeFiles/test_logging.dir/cmake_clean.cmake
.PHONY : src/logging/CMakeFiles/test_logging.dir/clean

src/logging/CMakeFiles/test_logging.dir/depend:
	cd /home/llh/bianyi/Compiler_2024_USTC/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/llh/bianyi/Compiler_2024_USTC /home/llh/bianyi/Compiler_2024_USTC/src/logging /home/llh/bianyi/Compiler_2024_USTC/build /home/llh/bianyi/Compiler_2024_USTC/build/src/logging /home/llh/bianyi/Compiler_2024_USTC/build/src/logging/CMakeFiles/test_logging.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/logging/CMakeFiles/test_logging.dir/depend
