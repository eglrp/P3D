# Install script for directory: /Users/iowen8/nburrus-nestk-1bbac78/deps/openni/Nite

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/usr/local")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/openni/Nite/Lib/MacOSX/libXnVCNite.dylib"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/openni/Nite/Lib/MacOSX/libXnVFeatures.dylib"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/openni/Nite/Lib/MacOSX/libXnVHandGenerator.dylib"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/openni/Nite/Lib/MacOSX/libXnVNite.dylib"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/openni/Nite/Lib/MacOSX/libXnVNITE.jni.dylib"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/Users/iowen8/nburrus-nestk-1bbac78/build/deps/openni/Nite/Samples/Players/cmake_install.cmake")
  INCLUDE("/Users/iowen8/nburrus-nestk-1bbac78/build/deps/openni/Nite/Samples/CircleControl/cmake_install.cmake")
  INCLUDE("/Users/iowen8/nburrus-nestk-1bbac78/build/deps/openni/Nite/Samples/Boxes/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

