# Install script for directory: /home/arclab/catkin_ws/src/cisst-saw/cisst

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstRevision.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstBuildType.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstCommonExternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstCommonExternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstTestsDriver")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstTestsDriverCppUnit.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstTestsDriver")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstTestsDriver")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstTestsDriverExternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstTestsDriver")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstCommonThreads.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstCommonExternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstOSAbstraction")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstOSAbstractionDL.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstOSAbstraction")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstOSAbstraction")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstOSAbstractionExternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstOSAbstraction")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstInteractive")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstInteractiveDL.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstInteractive")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstInteractive")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstInteractiveExternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstInteractive")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisst-config-version.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE RENAME "cisst-config.cmake" FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisst-config.cmake-to-be-installed")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/Usecisst.cmake"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstSettings.cmake"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstMacros.cmake"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstConfigVersion.cmake.in"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstConfig.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake/Modules" TYPE DIRECTORY FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/cmake/" FILES_MATCHING REGEX "/Find[^/]*\\.cmake$" REGEX "/\\.svn$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstCommon")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisst-dependencies/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstCommon/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstOSAbstraction/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstParameterTypes/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstRobot/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstTestsDriver/cmake_install.cmake")
  INCLUDE("/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

