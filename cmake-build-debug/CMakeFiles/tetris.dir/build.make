# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /tmp/tmp.St5UrXFl0K

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /tmp/tmp.St5UrXFl0K/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/tetris.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/tetris.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/tetris.dir/flags.make

CMakeFiles/tetris.dir/main.cpp.o: CMakeFiles/tetris.dir/flags.make
CMakeFiles/tetris.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/tetris.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tetris.dir/main.cpp.o -c /tmp/tmp.St5UrXFl0K/main.cpp

CMakeFiles/tetris.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tetris.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.St5UrXFl0K/main.cpp > CMakeFiles/tetris.dir/main.cpp.i

CMakeFiles/tetris.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tetris.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.St5UrXFl0K/main.cpp -o CMakeFiles/tetris.dir/main.cpp.s

CMakeFiles/tetris.dir/Game/Board.cpp.o: CMakeFiles/tetris.dir/flags.make
CMakeFiles/tetris.dir/Game/Board.cpp.o: ../Game/Board.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/tetris.dir/Game/Board.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tetris.dir/Game/Board.cpp.o -c /tmp/tmp.St5UrXFl0K/Game/Board.cpp

CMakeFiles/tetris.dir/Game/Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tetris.dir/Game/Board.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.St5UrXFl0K/Game/Board.cpp > CMakeFiles/tetris.dir/Game/Board.cpp.i

CMakeFiles/tetris.dir/Game/Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tetris.dir/Game/Board.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.St5UrXFl0K/Game/Board.cpp -o CMakeFiles/tetris.dir/Game/Board.cpp.s

CMakeFiles/tetris.dir/Game/Game.cpp.o: CMakeFiles/tetris.dir/flags.make
CMakeFiles/tetris.dir/Game/Game.cpp.o: ../Game/Game.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/tetris.dir/Game/Game.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tetris.dir/Game/Game.cpp.o -c /tmp/tmp.St5UrXFl0K/Game/Game.cpp

CMakeFiles/tetris.dir/Game/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tetris.dir/Game/Game.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.St5UrXFl0K/Game/Game.cpp > CMakeFiles/tetris.dir/Game/Game.cpp.i

CMakeFiles/tetris.dir/Game/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tetris.dir/Game/Game.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.St5UrXFl0K/Game/Game.cpp -o CMakeFiles/tetris.dir/Game/Game.cpp.s

CMakeFiles/tetris.dir/Game/IO.cpp.o: CMakeFiles/tetris.dir/flags.make
CMakeFiles/tetris.dir/Game/IO.cpp.o: ../Game/IO.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/tetris.dir/Game/IO.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tetris.dir/Game/IO.cpp.o -c /tmp/tmp.St5UrXFl0K/Game/IO.cpp

CMakeFiles/tetris.dir/Game/IO.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tetris.dir/Game/IO.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.St5UrXFl0K/Game/IO.cpp > CMakeFiles/tetris.dir/Game/IO.cpp.i

CMakeFiles/tetris.dir/Game/IO.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tetris.dir/Game/IO.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.St5UrXFl0K/Game/IO.cpp -o CMakeFiles/tetris.dir/Game/IO.cpp.s

CMakeFiles/tetris.dir/Game/Pieces.cpp.o: CMakeFiles/tetris.dir/flags.make
CMakeFiles/tetris.dir/Game/Pieces.cpp.o: ../Game/Pieces.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/tetris.dir/Game/Pieces.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tetris.dir/Game/Pieces.cpp.o -c /tmp/tmp.St5UrXFl0K/Game/Pieces.cpp

CMakeFiles/tetris.dir/Game/Pieces.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tetris.dir/Game/Pieces.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.St5UrXFl0K/Game/Pieces.cpp > CMakeFiles/tetris.dir/Game/Pieces.cpp.i

CMakeFiles/tetris.dir/Game/Pieces.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tetris.dir/Game/Pieces.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.St5UrXFl0K/Game/Pieces.cpp -o CMakeFiles/tetris.dir/Game/Pieces.cpp.s

CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.o: CMakeFiles/tetris.dir/flags.make
CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.o: ../MAX7219/Max7219Display.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.o -c /tmp/tmp.St5UrXFl0K/MAX7219/Max7219Display.cpp

CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /tmp/tmp.St5UrXFl0K/MAX7219/Max7219Display.cpp > CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.i

CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /tmp/tmp.St5UrXFl0K/MAX7219/Max7219Display.cpp -o CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.s

# Object files for target tetris
tetris_OBJECTS = \
"CMakeFiles/tetris.dir/main.cpp.o" \
"CMakeFiles/tetris.dir/Game/Board.cpp.o" \
"CMakeFiles/tetris.dir/Game/Game.cpp.o" \
"CMakeFiles/tetris.dir/Game/IO.cpp.o" \
"CMakeFiles/tetris.dir/Game/Pieces.cpp.o" \
"CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.o"

# External object files for target tetris
tetris_EXTERNAL_OBJECTS =

tetris: CMakeFiles/tetris.dir/main.cpp.o
tetris: CMakeFiles/tetris.dir/Game/Board.cpp.o
tetris: CMakeFiles/tetris.dir/Game/Game.cpp.o
tetris: CMakeFiles/tetris.dir/Game/IO.cpp.o
tetris: CMakeFiles/tetris.dir/Game/Pieces.cpp.o
tetris: CMakeFiles/tetris.dir/MAX7219/Max7219Display.cpp.o
tetris: CMakeFiles/tetris.dir/build.make
tetris: CMakeFiles/tetris.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable tetris"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tetris.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/tetris.dir/build: tetris

.PHONY : CMakeFiles/tetris.dir/build

CMakeFiles/tetris.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/tetris.dir/cmake_clean.cmake
.PHONY : CMakeFiles/tetris.dir/clean

CMakeFiles/tetris.dir/depend:
	cd /tmp/tmp.St5UrXFl0K/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /tmp/tmp.St5UrXFl0K /tmp/tmp.St5UrXFl0K /tmp/tmp.St5UrXFl0K/cmake-build-debug /tmp/tmp.St5UrXFl0K/cmake-build-debug /tmp/tmp.St5UrXFl0K/cmake-build-debug/CMakeFiles/tetris.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/tetris.dir/depend

