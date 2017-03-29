#
# Author(s):  Anton Deguet
# Created on: 2011-01-20
#
# (C) Copyright 2011-2016 Johns Hopkins University (JHU), All Rights Reserved.
#

set (sawIntuitiveResearchKit_VERSION_MAJOR "1")
set (sawIntuitiveResearchKit_VERSION_MINOR "4")
set (sawIntuitiveResearchKit_VERSION_PATCH "0")
set (sawIntuitiveResearchKit_VERSION "1.4.0")

# figure out if this file is where it was configured (build tree) or
# not (installed tree)
set (sawIntuitiveResearchKit_CMAKE_CONFIG_FILE "/home/arclab/catkin_ws/src/cisst-saw/sawIntuitiveResearchKit/components/sawIntuitiveResearchKitConfig.cmake")
get_filename_component (THIS_FILE_PATH
                        ${CMAKE_CURRENT_LIST_FILE}
                        REALPATH)

if ("${sawIntuitiveResearchKit_CMAKE_CONFIG_FILE}" STREQUAL "${THIS_FILE_PATH}")
  # we're using the build directories
  set (sawIntuitiveResearchKit_INCLUDE_DIR "/home/arclab/catkin_ws/src/cisst-saw/sawIntuitiveResearchKit/components/include;/home/arclab/catkin_ws/src/cisst-saw/sawIntuitiveResearchKit/components/include")
  set (sawIntuitiveResearchKit_LIBRARY_DIR "/home/arclab/catkin_ws/src/cisst-saw/cisst/lib")
else ()
  # try to find the install dir, we know the install is using
  # share/sawIntuitiveResearchKit so we can go ../..
  set (RELATIVE_INSTALL_DIR "${THIS_FILE_PATH}/../..")
  get_filename_component (ABSOLUTE_INSTALL_DIR "${RELATIVE_INSTALL_DIR}" ABSOLUTE)
  # set directories using the install dir
  set (sawIntuitiveResearchKit_INCLUDE_DIR "${ABSOLUTE_INSTALL_DIR}/include")
  set (sawIntuitiveResearchKit_LIBRARY_DIR "${ABSOLUTE_INSTALL_DIR}/lib")
endif ()

set (sawIntuitiveResearchKit_LIBRARIES   "sawIntuitiveResearchKit;sawIntuitiveResearchKitQt")
