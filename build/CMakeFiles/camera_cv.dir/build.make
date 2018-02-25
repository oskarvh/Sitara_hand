# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ubuntu/Documents/opencv/hand

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Documents/opencv/hand/build

# Include any dependencies generated for this target.
include CMakeFiles/camera_cv.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/camera_cv.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/camera_cv.dir/flags.make

CMakeFiles/camera_cv.dir/main.cpp.o: CMakeFiles/camera_cv.dir/flags.make
CMakeFiles/camera_cv.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Documents/opencv/hand/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/camera_cv.dir/main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/camera_cv.dir/main.cpp.o -c /home/ubuntu/Documents/opencv/hand/main.cpp

CMakeFiles/camera_cv.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camera_cv.dir/main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ubuntu/Documents/opencv/hand/main.cpp > CMakeFiles/camera_cv.dir/main.cpp.i

CMakeFiles/camera_cv.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camera_cv.dir/main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ubuntu/Documents/opencv/hand/main.cpp -o CMakeFiles/camera_cv.dir/main.cpp.s

CMakeFiles/camera_cv.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/camera_cv.dir/main.cpp.o.requires

CMakeFiles/camera_cv.dir/main.cpp.o.provides: CMakeFiles/camera_cv.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/camera_cv.dir/build.make CMakeFiles/camera_cv.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/camera_cv.dir/main.cpp.o.provides

CMakeFiles/camera_cv.dir/main.cpp.o.provides.build: CMakeFiles/camera_cv.dir/main.cpp.o


# Object files for target camera_cv
camera_cv_OBJECTS = \
"CMakeFiles/camera_cv.dir/main.cpp.o"

# External object files for target camera_cv
camera_cv_EXTERNAL_OBJECTS =

camera_cv: CMakeFiles/camera_cv.dir/main.cpp.o
camera_cv: CMakeFiles/camera_cv.dir/build.make
camera_cv: /usr/local/lib/libopencv_videostab.so.3.1.0
camera_cv: /usr/local/lib/libopencv_superres.so.3.1.0
camera_cv: /usr/local/lib/libopencv_stitching.so.3.1.0
camera_cv: /usr/local/lib/libopencv_shape.so.3.1.0
camera_cv: /usr/local/lib/libopencv_photo.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudastereo.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudaoptflow.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudaobjdetect.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudalegacy.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudaimgproc.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudafeatures2d.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudacodec.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudabgsegm.so.3.1.0
camera_cv: /usr/local/lib/libopencv_calib3d.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudawarping.so.3.1.0
camera_cv: /usr/local/lib/libopencv_objdetect.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudafilters.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudaarithm.so.3.1.0
camera_cv: /usr/local/lib/libopencv_features2d.so.3.1.0
camera_cv: /usr/local/lib/libopencv_ml.so.3.1.0
camera_cv: /usr/local/lib/libopencv_highgui.so.3.1.0
camera_cv: /usr/local/lib/libopencv_videoio.so.3.1.0
camera_cv: /usr/local/lib/libopencv_imgcodecs.so.3.1.0
camera_cv: /usr/local/lib/libopencv_flann.so.3.1.0
camera_cv: /usr/local/lib/libopencv_video.so.3.1.0
camera_cv: /usr/local/lib/libopencv_imgproc.so.3.1.0
camera_cv: /usr/local/lib/libopencv_core.so.3.1.0
camera_cv: /usr/local/lib/libopencv_cudev.so.3.1.0
camera_cv: CMakeFiles/camera_cv.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Documents/opencv/hand/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable camera_cv"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camera_cv.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/camera_cv.dir/build: camera_cv

.PHONY : CMakeFiles/camera_cv.dir/build

CMakeFiles/camera_cv.dir/requires: CMakeFiles/camera_cv.dir/main.cpp.o.requires

.PHONY : CMakeFiles/camera_cv.dir/requires

CMakeFiles/camera_cv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/camera_cv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/camera_cv.dir/clean

CMakeFiles/camera_cv.dir/depend:
	cd /home/ubuntu/Documents/opencv/hand/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Documents/opencv/hand /home/ubuntu/Documents/opencv/hand /home/ubuntu/Documents/opencv/hand/build /home/ubuntu/Documents/opencv/hand/build /home/ubuntu/Documents/opencv/hand/build/CMakeFiles/camera_cv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/camera_cv.dir/depend
