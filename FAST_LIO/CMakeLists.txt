cmake_minimum_required(VERSION 2.8.3)
if(POLICY CMP0048)
  cmake_policy(SET CMP0048 NEW)
endif()
project(fast_lio)

include(cmake/Color.cmake)

# >>> Setting macro definitions >>>
if (DEFINED PERFORMANCE_LOG)
  add_compile_definitions(PERFORMANCE_LOG)
endif ()

# First find catkin and its required components
find_package(catkin REQUIRED COMPONENTS
  geometry_msgs
  nav_msgs
  sensor_msgs
  roscpp
  rospy
  std_msgs
  pcl_ros
  tf
  livox_ros_driver
  message_generation
  eigen_conversions
)

# Then find other dependencies
find_package(Eigen3 REQUIRED)
find_package(PCL 1.8 REQUIRED)
find_package(PythonLibs REQUIRED)
find_package(OpenMP QUIET)

# Include compiler settings
include(cmake/Compiler.cmake)

# Include third party libraries after ROS packages
include(cmake/ThirdParty.cmake)

add_definitions(-DROOT_DIR=\"${CMAKE_CURRENT_SOURCE_DIR}/\")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fexceptions")
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread -std=c++0x -fexceptions")

# Processor configuration
message("Current CPU archtecture: ${CMAKE_SYSTEM_PROCESSOR}")
if(CMAKE_SYSTEM_PROCESSOR MATCHES "(x86)|(X86)|(amd64)|(AMD64)" )
  include(ProcessorCount)
  ProcessorCount(N)
  message("Processer number: ${N}")
  if(N GREATER 4)
    add_definitions(-DMP_EN)
    add_definitions(-DMP_PROC_NUM=3)
    message("core for MP: 3")
  elseif(N GREATER 3)
    add_definitions(-DMP_EN)
    add_definitions(-DMP_PROC_NUM=2)
    message("core for MP: 2")
  else()
    add_definitions(-DMP_PROC_NUM=1)
  endif()
else()
  add_definitions(-DMP_PROC_NUM=1)
endif()

# OpenMP settings
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${OpenMP_CXX_FLAGS}")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${OpenMP_C_FLAGS}")

# Find matplotlib cpp headers
find_path(MATPLOTLIB_CPP_INCLUDE_DIRS "matplotlibcpp.h")

message(STATUS "Eigen: ${EIGEN3_INCLUDE_DIR}")

# Include directories
include_directories(
  ${catkin_INCLUDE_DIRS}
  ${EIGEN3_INCLUDE_DIR}
  ${PCL_INCLUDE_DIRS}
  ${PYTHON_INCLUDE_DIRS}
  include
  src/ops
  src/utils
  src
)

# Add message files
add_message_files(
  FILES
  Pose6D.msg
)

# Generate messages
generate_messages(
  DEPENDENCIES
  geometry_msgs
)

# Catkin package configuration
catkin_package(
  CATKIN_DEPENDS geometry_msgs nav_msgs roscpp rospy std_msgs message_runtime
  DEPENDS EIGEN3 PCL
  INCLUDE_DIRS
)

add_library(pointcloud_io SHARED src/utils/pointcloud_io.cpp)
target_link_libraries(pointcloud_io ${PCL_LIBRARIES})

add_library(project_ops src/ops/project_kernel.cu src/ops/project.cpp)

include_directories(src/utils)
add_library(postprocess src/utils/postprocess.cpp)
target_link_libraries(postprocess ${TORCH_LIBRARIES} ${OpenCV_LIBRARIES})

add_library(rangenet_lib src/network/net.cpp src/network/netTensorRT.cpp)
target_link_libraries(rangenet_lib
  ${YAML_CPP_LIBRARIES}
  ${OpenCV_LIBS}
  ${TENSORRT_LIBRARIES}
  CUDA::cudart
  ${TORCH_LIBRARIES}
  ${PCL_LIBRARIES}
  project_ops
)

add_library(rangenet_segmentation src/rangenet_segmentation.cpp)
target_link_libraries(rangenet_segmentation   
  ${OpenCV_LIBS}
  rangenet_lib
  pointcloud_io
  postprocess
  fmt
)


# Add executable
add_executable(fastlio_mapping 
  src/laserMapping.cpp 
  include/ikd-Tree/ikd_Tree.cpp 
  src/preprocess.cpp
)

# Link libraries
target_link_libraries(fastlio_mapping 
  ${catkin_LIBRARIES} 
  ${PCL_LIBRARIES} 
  ${PYTHON_LIBRARIES}
  rangenet_segmentation
)

target_include_directories(fastlio_mapping PRIVATE 
                           ${PYTHON_INCLUDE_DIRS}
                           src/ops
                           src/utils
                           src )