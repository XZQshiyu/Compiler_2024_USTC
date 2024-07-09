# 项目名: Sysy
project(Sysy)
# 版本要求,最低 CMAKE VERSION 3.4
cmake_minimum_required( VERSION 3.4 )

# C编译器标志 包含C++编译器标志 + C99标准
# ${variable_name}相当于对变量variable_name解引用(类似指针),变量 variablle_name中的值是一个string
set(CMAKE_C_FLAGS "${CMAKE_CXX_FLAGS} -std=c99")
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -Wl,-z,stack-size=0x100000000")

# debug模式下的C++编译器标志
# 采用默认的C++编译器标志，-O0表示不采用优化，-Wall表示输出所有警告信息, -g2:源代码行数和变量名, -ggdb: gdb调试优化
SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")
# Release版本的C++编译器标志
# 默认C++编译器标志+O3全局优化, 输出所有警告信息
SET(CMAKE_CXX_FLAGS_RELEASE "$ENV{CXXFLAGS} -O3 -Wall")

# ASAN调试模式下的C++编译器标志设置:
# DEBUG模式下的设置+ 启用 AddressSanitizer 和 UndefinedBehaviorSanitizer,前者检测内存错误，后者检测未定义行为
SET(CMAKE_CXX_FLAGS_ASAN "${CMAKE_CXX_FLAGS_DEBUG} -fsanitize=undefined -fsanitize=address")

# 变量 default_build_type = Debug模式(默认的编译模式为debug模式)
set(default_build_type "Debug")

# STREQUAL 是 字符串比较关键字
# CMAKE_BUILD_TYPE 指定CMake构建类型的变量，有Debug,Release等
# CMAKE_BUILD_TYPE_SHADOW 用于跟踪 CMAKE_BUILD_TYPE上一次定义的值
# message可以理解为一个printf(或者log)输出一条信息，STATUS表示是重要信息(type of message)
if(NOT(CMAKE_BUILD_TYPE_SHADOW STREQUAL CMAKE_BUILD_TYPE))
    # CMAKE_BUILD_TYPE和CMAKE_CONFIGURATION_TYPES都没有设置时，设置CMAKE_BUILD_TYPE为 默认类型
    if(NOT CMAKE_BUILD_TYPE AND NOT CMAKE_CONFIGURATION_TYPES)
        message(STATUS "Setting build type to '${default_build_type}'")
        # 设置缓存(Cache)中CMAKE_BUILD_TYPE变量的值为默认，强制改变，关于该变量的描述为(Choose the type of build.)
        set(CMAKE_BUILD_TYPE "${default_build_type}" CACHE STRING "Choose the type of build." FORCE)
    else()
        message(STATUS "Building in ${CMAKE_BUILD_TYPE} mode")
    endif()

    set(CMAKE_BUILD_TYPE_SHADOW ${CMAKE_BUILD_TYPE} CACHE STRING "used to detect changes in build type" FORCE)
endif()
# C++ 标准 为 C++17
set(CMAKE_CXX_STANDARD 17)
# 默认生成compile_commands.json文件，包含编译器参数和编译步骤
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# 查找并加载第三方库,类似C++中的#include
# FLEX库, BISON库,LLVM库,对于LLVM库，使用LLVM自带的CMake配置文件而不是CMAKE默认的配置文件(CONFIG)关键字
find_package(FLEX REQUIRED)
find_package(BISON REQUIRED)
find_package(LLVM REQUIRED CONFIG)
# 输出 LLVM的版本号和配置文件的路径
message(STATUS "Found LLVM ${LLVM_PACKAGE_VERSION}")
message(STATUS "Using LLVMConfig.cmake in: ${LLVM_DIR}")

# 包含 LLVM 头文件目录
include_directories(${LLVM_INCLUDE_DIRS})
include_directories(${CMAKE_SOURCE_DIR}/include)

# 将LLVM库中的 support,core组件映射到库名 llvm_libs，可以使用llvm_libs这个变量名链接这些库
llvm_map_components_to_libnames(
    llvm_libs
    support
    core
)

# 相当于一个环境变量,包含了所有的头文件可能存在的目录,这样不会出现#include引用相对路径出现的头文件报错
# 头文件如下: 5个子目录,include目录和LLVM的包含目录
# 优先级问题?
INCLUDE_DIRECTORIES(
    include
    include/Sysy
    include/common
    include/lightir
    include/codegen
    include/passes/
    ${LLVM_INCLUDE_DIRS}
)

# 添加 LLVM编译器定义
add_definitions(${LLVM_DEFINITIONS})

# 设置CMake输出目录
# 可执行文件,静态库和动态库的输出目录都为 二进制目录
# PROJECT_BINARY_DIR表示当前目录的路径
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})
set(CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR})

# 添加头文件搜索路径: 当前目录+ 当前正在处理的项目的源代码目录路径，解决头文件include报错
include_directories(${PROJECT_SOURCE_DIR})  #源代码路径,包含最高级CMakeLists.txt的路径
include_directories(${PROJECT_BINARY_DIR})  # 当前路径

add_library(Sysy STATIC IMPORTED)
set_target_properties(Sysy PROPERTIES
    IMPORTED_LOCATION ${CMAKE_SOURCE_DIR}/libsysy.a
)

# 添加CMakeLists.txt的子结点依赖
add_subdirectory(src)
