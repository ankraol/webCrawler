# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.18

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
CMAKE_COMMAND = /Users/akrasnosel/.brew/Cellar/cmake/3.18.1/bin/cmake

# The command to remove a file.
RM = /Users/akrasnosel/.brew/Cellar/cmake/3.18.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/akrasnosel/Desktop/cpp_race01

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/akrasnosel/Desktop/cpp_race01/build

# Include any dependencies generated for this target.
include app/src/CMakeFiles/src.dir/depend.make

# Include the progress variables for this target.
include app/src/CMakeFiles/src.dir/progress.make

# Include the compile flags for this target's objects.
include app/src/CMakeFiles/src.dir/flags.make

app/src/CMakeFiles/src.dir/ProcessURL.cpp.o: app/src/CMakeFiles/src.dir/flags.make
app/src/CMakeFiles/src.dir/ProcessURL.cpp.o: ../app/src/ProcessURL.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akrasnosel/Desktop/cpp_race01/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object app/src/CMakeFiles/src.dir/ProcessURL.cpp.o"
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/ProcessURL.cpp.o -c /Users/akrasnosel/Desktop/cpp_race01/app/src/ProcessURL.cpp

app/src/CMakeFiles/src.dir/ProcessURL.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/ProcessURL.cpp.i"
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akrasnosel/Desktop/cpp_race01/app/src/ProcessURL.cpp > CMakeFiles/src.dir/ProcessURL.cpp.i

app/src/CMakeFiles/src.dir/ProcessURL.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/ProcessURL.cpp.s"
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akrasnosel/Desktop/cpp_race01/app/src/ProcessURL.cpp -o CMakeFiles/src.dir/ProcessURL.cpp.s

app/src/CMakeFiles/src.dir/SearchWin.cpp.o: app/src/CMakeFiles/src.dir/flags.make
app/src/CMakeFiles/src.dir/SearchWin.cpp.o: ../app/src/SearchWin.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/akrasnosel/Desktop/cpp_race01/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object app/src/CMakeFiles/src.dir/SearchWin.cpp.o"
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/src.dir/SearchWin.cpp.o -c /Users/akrasnosel/Desktop/cpp_race01/app/src/SearchWin.cpp

app/src/CMakeFiles/src.dir/SearchWin.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/src.dir/SearchWin.cpp.i"
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/akrasnosel/Desktop/cpp_race01/app/src/SearchWin.cpp > CMakeFiles/src.dir/SearchWin.cpp.i

app/src/CMakeFiles/src.dir/SearchWin.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/src.dir/SearchWin.cpp.s"
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/akrasnosel/Desktop/cpp_race01/app/src/SearchWin.cpp -o CMakeFiles/src.dir/SearchWin.cpp.s

# Object files for target src
src_OBJECTS = \
"CMakeFiles/src.dir/ProcessURL.cpp.o" \
"CMakeFiles/src.dir/SearchWin.cpp.o"

# External object files for target src
src_EXTERNAL_OBJECTS =

app/src/libsrc.dylib: app/src/CMakeFiles/src.dir/ProcessURL.cpp.o
app/src/libsrc.dylib: app/src/CMakeFiles/src.dir/SearchWin.cpp.o
app/src/libsrc.dylib: app/src/CMakeFiles/src.dir/build.make
app/src/libsrc.dylib: 3dparty/sfml/lib/libsfml-graphics.2.5.1.dylib
app/src/libsrc.dylib: 3dparty/sfml/lib/libsfml-window.2.5.1.dylib
app/src/libsrc.dylib: 3dparty/sfml/lib/libsfml-system.2.5.1.dylib
app/src/libsrc.dylib: app/src/CMakeFiles/src.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/akrasnosel/Desktop/cpp_race01/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libsrc.dylib"
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/src.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
app/src/CMakeFiles/src.dir/build: app/src/libsrc.dylib

.PHONY : app/src/CMakeFiles/src.dir/build

app/src/CMakeFiles/src.dir/clean:
	cd /Users/akrasnosel/Desktop/cpp_race01/build/app/src && $(CMAKE_COMMAND) -P CMakeFiles/src.dir/cmake_clean.cmake
.PHONY : app/src/CMakeFiles/src.dir/clean

app/src/CMakeFiles/src.dir/depend:
	cd /Users/akrasnosel/Desktop/cpp_race01/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/akrasnosel/Desktop/cpp_race01 /Users/akrasnosel/Desktop/cpp_race01/app/src /Users/akrasnosel/Desktop/cpp_race01/build /Users/akrasnosel/Desktop/cpp_race01/build/app/src /Users/akrasnosel/Desktop/cpp_race01/build/app/src/CMakeFiles/src.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : app/src/CMakeFiles/src.dir/depend

