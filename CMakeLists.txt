cmake_minimum_required(VERSION 3.1)

set(SRC_EXE main.cpp)
set(SRC_LIB calculator.cpp)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -Wextra -Werror")

add_library(library_cmake SHARED ${SRC_LIB})
add_executable(program_cmake ${SRC_EXE})

target_link_libraries(program_cmake library_cmake)