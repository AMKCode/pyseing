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
CMAKE_SOURCE_DIR = /home/kitao/Desktop/seing/att7/seing4python/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kitao/Desktop/seing/att7/seing4python/src/build

# Include any dependencies generated for this target.
include CMakeFiles/seing4python.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/seing4python.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/seing4python.dir/flags.make

CMakeFiles/seing4python.dir/seing4python.cpp.o: CMakeFiles/seing4python.dir/flags.make
CMakeFiles/seing4python.dir/seing4python.cpp.o: ../seing4python.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kitao/Desktop/seing/att7/seing4python/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/seing4python.dir/seing4python.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/seing4python.dir/seing4python.cpp.o -c /home/kitao/Desktop/seing/att7/seing4python/src/seing4python.cpp

CMakeFiles/seing4python.dir/seing4python.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/seing4python.dir/seing4python.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kitao/Desktop/seing/att7/seing4python/src/seing4python.cpp > CMakeFiles/seing4python.dir/seing4python.cpp.i

CMakeFiles/seing4python.dir/seing4python.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/seing4python.dir/seing4python.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kitao/Desktop/seing/att7/seing4python/src/seing4python.cpp -o CMakeFiles/seing4python.dir/seing4python.cpp.s

# Object files for target seing4python
seing4python_OBJECTS = \
"CMakeFiles/seing4python.dir/seing4python.cpp.o"

# External object files for target seing4python
seing4python_EXTERNAL_OBJECTS =

seing4python.cpython-38-x86_64-linux-gnu.so: CMakeFiles/seing4python.dir/seing4python.cpp.o
seing4python.cpython-38-x86_64-linux-gnu.so: CMakeFiles/seing4python.dir/build.make
seing4python.cpython-38-x86_64-linux-gnu.so: CMakeFiles/seing4python.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kitao/Desktop/seing/att7/seing4python/src/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared module seing4python.cpython-38-x86_64-linux-gnu.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/seing4python.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/seing4python.dir/build: seing4python.cpython-38-x86_64-linux-gnu.so

.PHONY : CMakeFiles/seing4python.dir/build

CMakeFiles/seing4python.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/seing4python.dir/cmake_clean.cmake
.PHONY : CMakeFiles/seing4python.dir/clean

CMakeFiles/seing4python.dir/depend:
	cd /home/kitao/Desktop/seing/att7/seing4python/src/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kitao/Desktop/seing/att7/seing4python/src /home/kitao/Desktop/seing/att7/seing4python/src /home/kitao/Desktop/seing/att7/seing4python/src/build /home/kitao/Desktop/seing/att7/seing4python/src/build /home/kitao/Desktop/seing/att7/seing4python/src/build/CMakeFiles/seing4python.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/seing4python.dir/depend

