# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.12

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\CLion 2018.2.7\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "E:\CLion 2018.2.7\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = E:\CLionProjects\Prim

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = E:\CLionProjects\Prim\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Prim.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Prim.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Prim.dir/flags.make

CMakeFiles/Prim.dir/main.c.obj: CMakeFiles/Prim.dir/flags.make
CMakeFiles/Prim.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CLionProjects\Prim\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Prim.dir/main.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Prim.dir\main.c.obj   -c E:\CLionProjects\Prim\main.c

CMakeFiles/Prim.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Prim.dir/main.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\CLionProjects\Prim\main.c > CMakeFiles\Prim.dir\main.c.i

CMakeFiles/Prim.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Prim.dir/main.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\CLionProjects\Prim\main.c -o CMakeFiles\Prim.dir\main.c.s

CMakeFiles/Prim.dir/prim.c.obj: CMakeFiles/Prim.dir/flags.make
CMakeFiles/Prim.dir/prim.c.obj: ../prim.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CLionProjects\Prim\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Prim.dir/prim.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Prim.dir\prim.c.obj   -c E:\CLionProjects\Prim\prim.c

CMakeFiles/Prim.dir/prim.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Prim.dir/prim.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\CLionProjects\Prim\prim.c > CMakeFiles\Prim.dir\prim.c.i

CMakeFiles/Prim.dir/prim.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Prim.dir/prim.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\CLionProjects\Prim\prim.c -o CMakeFiles\Prim.dir\prim.c.s

CMakeFiles/Prim.dir/binheap.c.obj: CMakeFiles/Prim.dir/flags.make
CMakeFiles/Prim.dir/binheap.c.obj: ../binheap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CLionProjects\Prim\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Prim.dir/binheap.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Prim.dir\binheap.c.obj   -c E:\CLionProjects\Prim\binheap.c

CMakeFiles/Prim.dir/binheap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Prim.dir/binheap.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\CLionProjects\Prim\binheap.c > CMakeFiles\Prim.dir\binheap.c.i

CMakeFiles/Prim.dir/binheap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Prim.dir/binheap.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\CLionProjects\Prim\binheap.c -o CMakeFiles\Prim.dir\binheap.c.s

CMakeFiles/Prim.dir/graph.c.obj: CMakeFiles/Prim.dir/flags.make
CMakeFiles/Prim.dir/graph.c.obj: ../graph.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=E:\CLionProjects\Prim\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Prim.dir/graph.c.obj"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\Prim.dir\graph.c.obj   -c E:\CLionProjects\Prim\graph.c

CMakeFiles/Prim.dir/graph.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Prim.dir/graph.c.i"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E E:\CLionProjects\Prim\graph.c > CMakeFiles\Prim.dir\graph.c.i

CMakeFiles/Prim.dir/graph.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Prim.dir/graph.c.s"
	C:\PROGRA~2\MINGW-~1\I686-8~1.0-P\mingw32\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S E:\CLionProjects\Prim\graph.c -o CMakeFiles\Prim.dir\graph.c.s

# Object files for target Prim
Prim_OBJECTS = \
"CMakeFiles/Prim.dir/main.c.obj" \
"CMakeFiles/Prim.dir/prim.c.obj" \
"CMakeFiles/Prim.dir/binheap.c.obj" \
"CMakeFiles/Prim.dir/graph.c.obj"

# External object files for target Prim
Prim_EXTERNAL_OBJECTS =

Prim.exe: CMakeFiles/Prim.dir/main.c.obj
Prim.exe: CMakeFiles/Prim.dir/prim.c.obj
Prim.exe: CMakeFiles/Prim.dir/binheap.c.obj
Prim.exe: CMakeFiles/Prim.dir/graph.c.obj
Prim.exe: CMakeFiles/Prim.dir/build.make
Prim.exe: CMakeFiles/Prim.dir/linklibs.rsp
Prim.exe: CMakeFiles/Prim.dir/objects1.rsp
Prim.exe: CMakeFiles/Prim.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=E:\CLionProjects\Prim\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable Prim.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Prim.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Prim.dir/build: Prim.exe

.PHONY : CMakeFiles/Prim.dir/build

CMakeFiles/Prim.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Prim.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Prim.dir/clean

CMakeFiles/Prim.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" E:\CLionProjects\Prim E:\CLionProjects\Prim E:\CLionProjects\Prim\cmake-build-debug E:\CLionProjects\Prim\cmake-build-debug E:\CLionProjects\Prim\cmake-build-debug\CMakeFiles\Prim.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Prim.dir/depend

