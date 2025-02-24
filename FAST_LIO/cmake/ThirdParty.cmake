# >>> 导入第三方库 >>>

# 导入Torch库
set(Torch_DIR $ENV{Torch_DIR})
find_package(Torch REQUIRED)
include_directories(${TORCH_INCLUDE_DIRS})

# 导入yaml-cpp库
find_package(yaml-cpp REQUIRED)
include_directories(${YAML_CPP_INCLUDE_DIR})

# 导入OpenCV库
find_package(OpenCV REQUIRED QUIET)
include_directories(${OpenCV_INCLUDE_DIRS})

# 导入CUDA、NVCC、TensorRT库
include(cmake/TensorRT.cmake)