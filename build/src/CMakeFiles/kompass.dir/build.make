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
CMAKE_SOURCE_DIR = /home/sylvain/perso/Kompass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sylvain/perso/Kompass/build

# Include any dependencies generated for this target.
include src/CMakeFiles/kompass.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/kompass.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/kompass.dir/flags.make

src/qrc_resources.cpp: ../src/contents/ui/main.qml
src/qrc_resources.cpp: src/resources.qrc.depends
src/qrc_resources.cpp: ../src/resources.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sylvain/perso/Kompass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating qrc_resources.cpp"
	cd /home/sylvain/perso/Kompass/build/src && /usr/lib/qt5/bin/rcc --name resources --output /home/sylvain/perso/Kompass/build/src/qrc_resources.cpp /home/sylvain/perso/Kompass/src/resources.qrc

src/CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.o: src/CMakeFiles/kompass.dir/flags.make
src/CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.o: src/kompass_autogen/mocs_compilation.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sylvain/perso/Kompass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.o"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.o -c /home/sylvain/perso/Kompass/build/src/kompass_autogen/mocs_compilation.cpp

src/CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.i"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sylvain/perso/Kompass/build/src/kompass_autogen/mocs_compilation.cpp > CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.i

src/CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.s"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sylvain/perso/Kompass/build/src/kompass_autogen/mocs_compilation.cpp -o CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.s

src/CMakeFiles/kompass.dir/main.cpp.o: src/CMakeFiles/kompass.dir/flags.make
src/CMakeFiles/kompass.dir/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sylvain/perso/Kompass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/kompass.dir/main.cpp.o"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kompass.dir/main.cpp.o -c /home/sylvain/perso/Kompass/src/main.cpp

src/CMakeFiles/kompass.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kompass.dir/main.cpp.i"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sylvain/perso/Kompass/src/main.cpp > CMakeFiles/kompass.dir/main.cpp.i

src/CMakeFiles/kompass.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kompass.dir/main.cpp.s"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sylvain/perso/Kompass/src/main.cpp -o CMakeFiles/kompass.dir/main.cpp.s

src/CMakeFiles/kompass.dir/qrc_resources.cpp.o: src/CMakeFiles/kompass.dir/flags.make
src/CMakeFiles/kompass.dir/qrc_resources.cpp.o: src/qrc_resources.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sylvain/perso/Kompass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/kompass.dir/qrc_resources.cpp.o"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/kompass.dir/qrc_resources.cpp.o -c /home/sylvain/perso/Kompass/build/src/qrc_resources.cpp

src/CMakeFiles/kompass.dir/qrc_resources.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/kompass.dir/qrc_resources.cpp.i"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sylvain/perso/Kompass/build/src/qrc_resources.cpp > CMakeFiles/kompass.dir/qrc_resources.cpp.i

src/CMakeFiles/kompass.dir/qrc_resources.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/kompass.dir/qrc_resources.cpp.s"
	cd /home/sylvain/perso/Kompass/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sylvain/perso/Kompass/build/src/qrc_resources.cpp -o CMakeFiles/kompass.dir/qrc_resources.cpp.s

# Object files for target kompass
kompass_OBJECTS = \
"CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.o" \
"CMakeFiles/kompass.dir/main.cpp.o" \
"CMakeFiles/kompass.dir/qrc_resources.cpp.o"

# External object files for target kompass
kompass_EXTERNAL_OBJECTS =

src/kompass: src/CMakeFiles/kompass.dir/kompass_autogen/mocs_compilation.cpp.o
src/kompass: src/CMakeFiles/kompass.dir/main.cpp.o
src/kompass: src/CMakeFiles/kompass.dir/qrc_resources.cpp.o
src/kompass: src/CMakeFiles/kompass.dir/build.make
src/kompass: src/CMakeFiles/kompass.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sylvain/perso/Kompass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable kompass"
	cd /home/sylvain/perso/Kompass/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/kompass.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/kompass.dir/build: src/kompass

.PHONY : src/CMakeFiles/kompass.dir/build

src/CMakeFiles/kompass.dir/clean:
	cd /home/sylvain/perso/Kompass/build/src && $(CMAKE_COMMAND) -P CMakeFiles/kompass.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/kompass.dir/clean

src/CMakeFiles/kompass.dir/depend: src/qrc_resources.cpp
	cd /home/sylvain/perso/Kompass/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sylvain/perso/Kompass /home/sylvain/perso/Kompass/src /home/sylvain/perso/Kompass/build /home/sylvain/perso/Kompass/build/src /home/sylvain/perso/Kompass/build/src/CMakeFiles/kompass.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/kompass.dir/depend

