cmake_minimum_required(VERSION 3.1)

include_directories(../../3dparty/SFML/include/SFML/)

project(render LANGUAGES CXX)
add_library(render renderSearchWin.cpp)

target_link_libraries (render src)
target_link_libraries (render sfml-graphics sfml-window sfml-system)
