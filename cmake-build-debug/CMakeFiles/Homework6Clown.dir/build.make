# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_SOURCE_DIR = /mnt/d/Course/Homework6Clown

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/d/Course/Homework6Clown/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Homework6Clown.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Homework6Clown.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Homework6Clown.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Homework6Clown.dir/flags.make

CMakeFiles/Homework6Clown.dir/main.cpp.o: CMakeFiles/Homework6Clown.dir/flags.make
CMakeFiles/Homework6Clown.dir/main.cpp.o: ../main.cpp
CMakeFiles/Homework6Clown.dir/main.cpp.o: CMakeFiles/Homework6Clown.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/mnt/d/Course/Homework6Clown/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Homework6Clown.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Homework6Clown.dir/main.cpp.o -MF CMakeFiles/Homework6Clown.dir/main.cpp.o.d -o CMakeFiles/Homework6Clown.dir/main.cpp.o -c /mnt/d/Course/Homework6Clown/main.cpp

CMakeFiles/Homework6Clown.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Homework6Clown.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/d/Course/Homework6Clown/main.cpp > CMakeFiles/Homework6Clown.dir/main.cpp.i

CMakeFiles/Homework6Clown.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Homework6Clown.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/d/Course/Homework6Clown/main.cpp -o CMakeFiles/Homework6Clown.dir/main.cpp.s

# Object files for target Homework6Clown
Homework6Clown_OBJECTS = \
"CMakeFiles/Homework6Clown.dir/main.cpp.o"

# External object files for target Homework6Clown
Homework6Clown_EXTERNAL_OBJECTS =

Homework6Clown: CMakeFiles/Homework6Clown.dir/main.cpp.o
Homework6Clown: CMakeFiles/Homework6Clown.dir/build.make
Homework6Clown: CMakeFiles/Homework6Clown.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/mnt/d/Course/Homework6Clown/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Homework6Clown"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Homework6Clown.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Homework6Clown.dir/build: Homework6Clown
.PHONY : CMakeFiles/Homework6Clown.dir/build

CMakeFiles/Homework6Clown.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Homework6Clown.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Homework6Clown.dir/clean

CMakeFiles/Homework6Clown.dir/depend:
	cd /mnt/d/Course/Homework6Clown/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/d/Course/Homework6Clown /mnt/d/Course/Homework6Clown /mnt/d/Course/Homework6Clown/cmake-build-debug /mnt/d/Course/Homework6Clown/cmake-build-debug /mnt/d/Course/Homework6Clown/cmake-build-debug/CMakeFiles/Homework6Clown.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Homework6Clown.dir/depend

