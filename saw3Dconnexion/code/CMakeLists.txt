#
#
# (C) Copyright 2011-2012 Johns Hopkins University (JHU), All Rights
# Reserved.
#
# --- begin cisst license - do not edit ---
#
# This software is provided "as is" under an open source license, with
# no warranty.  The complete license can be found in license.txt and
# http://www.cisst.org/cisst/license.txt.
#
# --- end cisst license ---

# Core library
set (REQUIRED_CISST_LIBRARIES cisstCommon
                              cisstVector
                              cisstOSAbstraction
                              cisstMultiTask
                              cisstParameterTypes)

find_package (cisst REQUIRED ${REQUIRED_CISST_LIBRARIES})

# 3DconnexionClient is required for Mac OS only
if (APPLE)
  # To find Find3Dconnexion.cmake
  set (CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${CMAKE_CURRENT_SOURCE_DIR})
  find_package (3DconnexionClient REQUIRED)
  if (NOT 3DconnexionClient_FOUND)
    message (SEND_ERROR "code in ${CMAKE_CURRENT_SOURCE_DIR} requires 3DconnexionClient.")
  endif (NOT 3DconnexionClient_FOUND)
endif (APPLE)

if ("${CMAKE_SYSTEM}" MATCHES "Linux")
    find_path(SPNAV_INCLUDE_DIR spnav.h)
    find_library(SPNAV_LIBRARY
                 NAMES
                 spnav libspnav
    )

    #set SPNAV_FOUND if found.
    find_package_handle_standard_args(spnav 
                                    DEFAULT_MSG
                                    SPNAV_LIBRARY
                                    SPNAV_INCLUDE_DIR)

    mark_as_advanced(SPANV_LIBRARY SPNAV_INCLUDE_DIR)
    include_directories (${SPNAV_INCLUDE_DIR} ${saw3Dconnexion_BINARY_DIR})
endif ("${CMAKE_SYSTEM}" MATCHES "Linux")


if (cisst_FOUND_AS_REQUIRED)

  # load cisst configuration
  include (${CISST_USE_FILE})

  # create/configure file for find_package (saw3Dconnexion)
  set (saw3Dconnexion_INCLUDE_DIR "${saw3Dconnexion_SOURCE_DIR}/include")
  set (saw3Dconnexion_LIBRARY_DIR "${LIBRARY_OUTPUT_PATH}")
  set (saw3Dconnexion_LIBRARIES saw3Dconnexion
                                ${3DconnexionClient_LIBRARY}
                                )

  include_directories (${saw3Dconnexion_INCLUDE_DIR})
  #used for saw3DconnectionConfig.h generated by cmake (only included in cpp file)
  include_directories (${saw3Dconnexion_BINARY_DIR})
  if (APPLE)
    include_directories (${3DconnexionClient_INCLUDE_DIR})
  endif (APPLE)

  set (saw3Dconnexion_HEADER_DIR "${saw3Dconnexion_INCLUDE_DIR}/saw3Dconnexion")
  set (HEADER_FILES
       ${saw3Dconnexion_HEADER_DIR}/saw3DconnexionExport.h
       ${saw3Dconnexion_HEADER_DIR}/mts3Dconnexion.h)
  set (SOURCE_FILES
       mts3Dconnexion.cpp)

  if ("${CMAKE_SYSTEM}" MATCHES "Linux")
    set (HEADER_FILES
         ${HEADER_FILES}
	 ${saw3Dconnexion_HEADER_DIR}/osa3Dconnexion.h)
    set (SOURCE_FILES
         ${SOURCE_FILES}
         osa3Dconnexion.cpp)
  endif ("${CMAKE_SYSTEM}" MATCHES "Linux")

  if (SPNAV_FOUND)
    set(SAW_HAS_SPACENAV 1)
    set (saw3Dconnexion_LIBRARIES ${saw3Dconnexion_LIBRARIES}
                                  ${SPNAV_LIBRARY})
  else (SPNAV_FOUND)
    set(SAW_HAS_SPACENAV 0)
  endif (SPNAV_FOUND)


  add_library (saw3Dconnexion ${IS_SHARED} ${HEADER_FILES} ${SOURCE_FILES})

  set_property (TARGET saw3Dconnexion PROPERTY FOLDER "saw3Dconnexion")
  cisst_target_link_libraries (saw3Dconnexion ${REQUIRED_CISST_LIBRARIES})

  if (APPLE)
     set (saw3Dconnexion_LIBRARIES ${saw3Dconnexion_LIBRARIES}
                                  ${3DconnexionClient_LIBRARY})
  endif (APPLE)

  target_link_libraries (saw3Dconnexion ${saw3Dconnexion_LIBRARIES})

  configure_file ("${CMAKE_CURRENT_SOURCE_DIR}/saw3DconnexionConfig.cmake.in"
                  "${saw3Dconnexion_BINARY_DIR}/saw3DconnexionConfig.cmake"
                   @ONLY@)

  configure_file("${CMAKE_CURRENT_SOURCE_DIR}/saw3DconnexionConfig.h.in"
                 "${saw3Dconnexion_BINARY_DIR}/saw3DconnexionConfig.h")

  # Install target for headers and library
  install (DIRECTORY
           ${saw3Dconnexion_INCLUDE_DIR}/saw3Dconnexion
           DESTINATION include
           PATTERN .svn EXCLUDE)

  install (TARGETS saw3Dconnexion
           RUNTIME DESTINATION bin
           LIBRARY DESTINATION lib
           ARCHIVE DESTINATION lib)

  install (FILES "${saw3Dconnexion_BINARY_DIR}/saw3DconnexionConfig.cmake"
           DESTINATION "${CISST_CMAKE_INSTALL_SUFFIX}/saw")




else (cisst_FOUND_AS_REQUIRED)
  message ("Information: code in ${CMAKE_CURRENT_SOURCE_DIR} will not be compiled, it requires ${REQUIRED_CISST_LIBRARIES}")
endif (cisst_FOUND_AS_REQUIRED)
