#
# Author(s):  Preetham Chalasani
# Created on: 2014-08-18
#
# (C) Copyright 2014 Johns Hopkins University (JHU), All Rights
# Reserved.
#
# --- begin cisst license - do not edit ---
#
# This software is provided "as is" under an open source license, with
# no warranty.  The complete license can be found in license.txt and
# http://www.cisst.org/cisst/license.txt.
#
# --- end cisst license ---

set (REQUIRED_CISST_LIBRARIES
     cisstCommon
     cisstCommonXML
     cisstVector
     cisstOSAbstraction
     cisstMultiTask
     cisstParameterTypes
     )

find_package (cisst REQUIRED ${REQUIRED_CISST_LIBRARIES})

if (cisst_FOUND_AS_REQUIRED)

  # load cisst configuration
  include (${CISST_USE_FILE})

  # create/configure file for find_package (sawATIForceSensor)
  set (sawATIForceSensor_INCLUDE_DIR "${sawATIForceSensor_SOURCE_DIR}/include")
  set (sawATIForceSensor_LIBRARY_DIR "${LIBRARY_OUTPUT_PATH}")
  set (sawATIForceSensor_LIBRARIES sawATIForceSensor)

  include_directories (${sawATIForceSensor_INCLUDE_DIR})
  set (sawATIForceSensor_HEADER_DIR "${sawATIForceSensor_INCLUDE_DIR}/sawATIForceSensor")

  set (HEADER_FILES
       ${sawATIForceSensor_HEADER_DIR}/sawATIForceSensorExport.h
       ${sawATIForceSensor_HEADER_DIR}/mtsATINetFTSensor.h
       ${sawATIForceSensor_HEADER_DIR}/mtsATINetFTConfig.h
       )

  set (SOURCE_FILES
       mtsATINetFTSensor.cpp
       mtsATINetFTConfig.cpp
       )

  add_library (sawATIForceSensor ${HEADER_FILES} ${SOURCE_FILES})
  cisst_target_link_libraries (sawATIForceSensor ${REQUIRED_CISST_LIBRARIES})
  set_property (TARGET sawATIForceSensor PROPERTY FOLDER "sawATIForceSensor")

  # add Qt code
  if (CISST_HAS_QT)
    add_subdirectory (Qt)
    set (sawATIForceSensor_LIBRARIES ${sawATIForceSensor_LIBRARIES} ${sawATIForceSensorQt_LIBRARIES})
  endif (CISST_HAS_QT)

  configure_file ("${CMAKE_CURRENT_SOURCE_DIR}/sawATIForceSensorConfig.cmake.in"
                  "${sawATIForceSensor_BINARY_DIR}/sawATIForceSensorConfig.cmake"
                  @ONLY@)

  # Install targets for headers and library
  install (DIRECTORY
           ${sawATIForceSensor_INCLUDE_DIR}/sawATIForceSensor
           DESTINATION include
           PATTERN .svn EXCLUDE)

  install (TARGETS sawATIForceSensor
           RUNTIME DESTINATION bin
           LIBRARY DESTINATION lib
           ARCHIVE DESTINATION lib)

  install (FILES "${sawATIForceSensor_BINARY_DIR}/sawATIForceSensorConfig.cmake"
           DESTINATION "${CISST_CMAKE_INSTALL_SUFFIX}/saw")

endif (cisst_FOUND_AS_REQUIRED)
