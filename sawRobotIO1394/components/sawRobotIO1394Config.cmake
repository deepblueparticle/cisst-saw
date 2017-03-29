#
# (C) Copyright 2013-2016 Johns Hopkins University (JHU), All Rights Reserved.
#

# this file is automatically generated by CMake from
# sawRobotIO1394Config.cmake.in

set (sawRobotIO1394_VERSION_MAJOR "1")
set (sawRobotIO1394_VERSION_MINOR "4")
set (sawRobotIO1394_VERSION_PATCH "0")
set (sawRobotIO1394_VERSION "1.4.0")

# figure out if this file is where it was configured (build tree) or
# not (installed tree)
set (sawRobotIO1394_CMAKE_CONFIG_FILE "/home/arclab/catkin_ws/src/cisst-saw/sawRobotIO1394/components/sawRobotIO1394Config.cmake")
get_filename_component (THIS_FILE_PATH
                        ${CMAKE_CURRENT_LIST_FILE}
                        REALPATH)

if ("${sawRobotIO1394_CMAKE_CONFIG_FILE}" STREQUAL "${THIS_FILE_PATH}")
  # we're using the build directories
  set (sawRobotIO1394_INCLUDE_DIR "/home/arclab/catkin_ws/src/cisst-saw/sawRobotIO1394/components/include;/home/arclab/catkin_ws/src/cisst-saw/sawRobotIO1394/components/include;/home/arclab/catkin_ws/src/cisst-saw/sawRobotIO1394/components/code/Amp1394/lib;/home/arclab/catkin_ws/src/cisst-saw/sawRobotIO1394/components/code/Amp1394")
  set (sawRobotIO1394_LIBRARY_DIR "/home/arclab/catkin_ws/src/cisst-saw/cisst/lib")
else ()
  # try to find the install dir, we know the install is using
  # share/sawRobotIO1394 so we can go ../..
  set (RELATIVE_INSTALL_DIR "${THIS_FILE_PATH}/../..")
  get_filename_component (ABSOLUTE_INSTALL_DIR "${RELATIVE_INSTALL_DIR}" ABSOLUTE)
  # set directories using the install dir
  set (sawRobotIO1394_INCLUDE_DIR "${ABSOLUTE_INSTALL_DIR}/include")
  set (sawRobotIO1394_LIBRARY_DIR "${ABSOLUTE_INSTALL_DIR}/lib")
endif ()

set (sawRobotIO1394_LIBRARIES   "sawRobotIO1394;Amp1394;raw1394;sawRobotIO1394Qt")
