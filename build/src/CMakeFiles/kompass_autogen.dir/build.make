# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_SOURCE_DIR = /home/sylvain/Documents/Kompass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sylvain/Documents/Kompass/build

# Utility rule file for kompass_autogen.

# Include any custom commands dependencies for this target.
include src/CMakeFiles/kompass_autogen.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/kompass_autogen.dir/progress.make

src/CMakeFiles/kompass_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/sylvain/Documents/Kompass/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC for target kompass"
	cd /home/sylvain/Documents/Kompass/build/src && /usr/bin/cmake -E cmake_autogen /home/sylvain/Documents/Kompass/build/src/CMakeFiles/kompass_autogen.dir/AutogenInfo.json Debug

kompass_autogen: src/CMakeFiles/kompass_autogen
kompass_autogen: src/CMakeFiles/kompass_autogen.dir/build.make
.PHONY : kompass_autogen

# Rule to build all files generated by this target.
src/CMakeFiles/kompass_autogen.dir/build: kompass_autogen
.PHONY : src/CMakeFiles/kompass_autogen.dir/build

src/CMakeFiles/kompass_autogen.dir/clean:
	cd /home/sylvain/Documents/Kompass/build/src && $(CMAKE_COMMAND) -P CMakeFiles/kompass_autogen.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/kompass_autogen.dir/clean

src/CMakeFiles/kompass_autogen.dir/depend:
	cd /home/sylvain/Documents/Kompass/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sylvain/Documents/Kompass /home/sylvain/Documents/Kompass/src /home/sylvain/Documents/Kompass/build /home/sylvain/Documents/Kompass/build/src /home/sylvain/Documents/Kompass/build/src/CMakeFiles/kompass_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/kompass_autogen.dir/depend
