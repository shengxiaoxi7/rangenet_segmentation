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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build

# Include any dependencies generated for this target.
include sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/depend.make

# Include the progress variables for this target.
include sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/progress.make

# Include the compile flags for this target's objects.
include sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/flags.make

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/main.cpp.o: sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/flags.make
sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/main.cpp.o: ../sample/lidar_lvx_file/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/main.cpp.o"
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lidar_lvx_sample.dir/main.cpp.o -c /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/sample/lidar_lvx_file/main.cpp

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lidar_lvx_sample.dir/main.cpp.i"
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/sample/lidar_lvx_file/main.cpp > CMakeFiles/lidar_lvx_sample.dir/main.cpp.i

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lidar_lvx_sample.dir/main.cpp.s"
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/sample/lidar_lvx_file/main.cpp -o CMakeFiles/lidar_lvx_sample.dir/main.cpp.s

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.o: sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/flags.make
sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.o: ../sample/lidar_lvx_file/lvx_file.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.o"
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.o -c /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/sample/lidar_lvx_file/lvx_file.cpp

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.i"
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/sample/lidar_lvx_file/lvx_file.cpp > CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.i

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.s"
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/sample/lidar_lvx_file/lvx_file.cpp -o CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.s

# Object files for target lidar_lvx_sample
lidar_lvx_sample_OBJECTS = \
"CMakeFiles/lidar_lvx_sample.dir/main.cpp.o" \
"CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.o"

# External object files for target lidar_lvx_sample
lidar_lvx_sample_EXTERNAL_OBJECTS =

sample/lidar_lvx_file/lidar_lvx_sample: sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/main.cpp.o
sample/lidar_lvx_file/lidar_lvx_sample: sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/lvx_file.cpp.o
sample/lidar_lvx_file/lidar_lvx_sample: sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/build.make
sample/lidar_lvx_file/lidar_lvx_sample: sdk_core/liblivox_sdk_static.a
sample/lidar_lvx_file/lidar_lvx_sample: sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable lidar_lvx_sample"
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lidar_lvx_sample.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/build: sample/lidar_lvx_file/lidar_lvx_sample

.PHONY : sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/build

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/clean:
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file && $(CMAKE_COMMAND) -P CMakeFiles/lidar_lvx_sample.dir/cmake_clean.cmake
.PHONY : sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/clean

sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/depend:
	cd /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/sample/lidar_lvx_file /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file /home/s123/ME5001/slamrun/fast_lio2_ws/src/livox_ros_driver/livox_ros_driver/Livox-SDK/build/sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sample/lidar_lvx_file/CMakeFiles/lidar_lvx_sample.dir/depend

