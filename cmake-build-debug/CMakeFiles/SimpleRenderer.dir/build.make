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
CMAKE_COMMAND = /opt/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /opt/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/musique88/CLionProjects/SimpleRenderer

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/SimpleRenderer.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SimpleRenderer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SimpleRenderer.dir/flags.make

CMakeFiles/SimpleRenderer.dir/main.cpp.o: CMakeFiles/SimpleRenderer.dir/flags.make
CMakeFiles/SimpleRenderer.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SimpleRenderer.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SimpleRenderer.dir/main.cpp.o -c /home/musique88/CLionProjects/SimpleRenderer/main.cpp

CMakeFiles/SimpleRenderer.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SimpleRenderer.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/musique88/CLionProjects/SimpleRenderer/main.cpp > CMakeFiles/SimpleRenderer.dir/main.cpp.i

CMakeFiles/SimpleRenderer.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SimpleRenderer.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/musique88/CLionProjects/SimpleRenderer/main.cpp -o CMakeFiles/SimpleRenderer.dir/main.cpp.s

# Object files for target SimpleRenderer
SimpleRenderer_OBJECTS = \
"CMakeFiles/SimpleRenderer.dir/main.cpp.o"

# External object files for target SimpleRenderer
SimpleRenderer_EXTERNAL_OBJECTS =

SimpleRenderer: CMakeFiles/SimpleRenderer.dir/main.cpp.o
SimpleRenderer: CMakeFiles/SimpleRenderer.dir/build.make
SimpleRenderer: CMakeFiles/SimpleRenderer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SimpleRenderer"
	/opt/clion/bin/cmake/linux/bin/cmake -E create_symlink /home/musique88/CLionProjects/SimpleRenderer/res /home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug/res
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SimpleRenderer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SimpleRenderer.dir/build: SimpleRenderer

.PHONY : CMakeFiles/SimpleRenderer.dir/build

CMakeFiles/SimpleRenderer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SimpleRenderer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SimpleRenderer.dir/clean

CMakeFiles/SimpleRenderer.dir/depend:
	cd /home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/musique88/CLionProjects/SimpleRenderer /home/musique88/CLionProjects/SimpleRenderer /home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug /home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug /home/musique88/CLionProjects/SimpleRenderer/cmake-build-debug/CMakeFiles/SimpleRenderer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SimpleRenderer.dir/depend

