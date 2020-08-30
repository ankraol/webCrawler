cmake_minimum_required(VERSION 3.1)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_EXTENSIONS OFF)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

project(app_project LANGUAGES CXX)
set(SOURCE_EXE main.cpp)
add_subdirectory(src)
add_subdirectory(render)
include_directories(../3dparty/SFML/include/SFML/)

add_compile_options(
        -std=c++17
        -Werror
        -Wall
        -Wextra
        -Wpedantic
        -Wno-unused-parameter
)

add_executable(race01 main.cpp src/SearchWin.cpp src/ProcessURL.cpp
                render/renderSearchWin.cpp)
target_link_libraries (race01 sfml-graphics sfml-window sfml-system)
