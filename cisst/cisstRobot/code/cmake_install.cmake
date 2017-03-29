# Install script for directory: /home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/code

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
    SET(CMAKE_INSTALL_CONFIG_NAME "")
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

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstRobot.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstRobot.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstRobot.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/lib/libcisstRobot.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstRobot.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstRobot.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstRobot.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstRobot.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstRobotInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstRobotInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstRobotInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cisstRobot" TYPE FILE FILES
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robCubicSO3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robDH.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robExport.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robFunction.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robFunctionRn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robFunctionSE3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robFunctionSO3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robHayati.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robJoint.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robKinematics.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robLSPB.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robLinearRn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robLinearSE3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robLink.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robManipulator.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robMass.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robModifiedDH.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robModifiedHayati.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robQLQRn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robQuintic.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/robSLERP.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstRobot.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstRobot")

