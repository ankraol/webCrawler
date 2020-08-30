# Install script for directory: /Users/akrasnosel/Desktop/cpp_race01/3dparty/sfml/src/SFML/Window

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/akrasnosel/.brew")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xbinx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/akrasnosel/Desktop/cpp_race01/build/3dparty/sfml/lib/libsfml-window.2.5.1.dylib"
    "/Users/akrasnosel/Desktop/cpp_race01/build/3dparty/sfml/lib/libsfml-window.2.5.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.1.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.2.5.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/akrasnosel/Desktop/cpp_race01/3dparty/SFML_LIBRARY_DIR"
        "${file}")
      execute_process(COMMAND /usr/bin/install_name_tool
        -delete_rpath "/Users/akrasnosel/Desktop/cpp_race01/build/3dparty/sfml/lib"
        "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xbinx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/akrasnosel/Desktop/cpp_race01/build/3dparty/sfml/lib/libsfml-window.dylib")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/akrasnosel/Desktop/cpp_race01/3dparty/SFML_LIBRARY_DIR"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
    execute_process(COMMAND /usr/bin/install_name_tool
      -delete_rpath "/Users/akrasnosel/Desktop/cpp_race01/build/3dparty/sfml/lib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -x "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libsfml-window.dylib")
    endif()
  endif()
endif()

