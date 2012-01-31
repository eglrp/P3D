# Install script for directory: /Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")
  list(APPEND CPACK_ABSOLUTE_DESTINATION_FILES
   "/usr/local/include/eigen3/Eigen/src/plugins/ArrayCwiseBinaryOps.h;/usr/local/include/eigen3/Eigen/src/plugins/ArrayCwiseUnaryOps.h;/usr/local/include/eigen3/Eigen/src/plugins/BlockMethods.h;/usr/local/include/eigen3/Eigen/src/plugins/CommonCwiseBinaryOps.h;/usr/local/include/eigen3/Eigen/src/plugins/CommonCwiseUnaryOps.h;/usr/local/include/eigen3/Eigen/src/plugins/MatrixCwiseBinaryOps.h;/usr/local/include/eigen3/Eigen/src/plugins/MatrixCwiseUnaryOps.h")
FILE(INSTALL DESTINATION "/usr/local/include/eigen3/Eigen/src/plugins" TYPE FILE FILES
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins/ArrayCwiseBinaryOps.h"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins/ArrayCwiseUnaryOps.h"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins/BlockMethods.h"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins/CommonCwiseBinaryOps.h"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins/CommonCwiseUnaryOps.h"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins/MatrixCwiseBinaryOps.h"
    "/Users/iowen8/nburrus-nestk-1bbac78/deps/eigen/Eigen/src/plugins/MatrixCwiseUnaryOps.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Devel")

