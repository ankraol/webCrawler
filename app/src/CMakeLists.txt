cmake_minimum_required(VERSION 3.1)

include_directories(../../3dparty/SFML/include/SFML/)

project(src LANGUAGES CXX)
add_library(src ProcessURL.cpp SearchWin.cpp)

target_link_libraries (src sfml-graphics sfml-window sfml-system)
