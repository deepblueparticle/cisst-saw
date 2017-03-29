# This file will be configured to contain variables for CPack. These variables
# should be set in the CMake list file of the project before CPack module is
# included. The list of available CPACK_xxx variables and their associated
# documentation may be obtained using
#  cpack --help-variable-list
#
# Some variables are common to all generators (e.g. CPACK_PACKAGE_NAME)
# and some are specific to a generator
# (e.g. CPACK_NSIS_EXTRA_INSTALL_COMMANDS). The generator specific variables
# usually begin with CPACK_<GENNAME>_xxxx.


SET(CPACK_BINARY_BUNDLE "")
SET(CPACK_BINARY_CYGWIN "")
SET(CPACK_BINARY_DEB "OFF")
SET(CPACK_BINARY_DRAGNDROP "")
SET(CPACK_BINARY_NSIS "OFF")
SET(CPACK_BINARY_OSXX11 "")
SET(CPACK_BINARY_PACKAGEMAKER "")
SET(CPACK_BINARY_RPM "OFF")
SET(CPACK_BINARY_STGZ "ON")
SET(CPACK_BINARY_TBZ2 "OFF")
SET(CPACK_BINARY_TGZ "ON")
SET(CPACK_BINARY_TZ "ON")
SET(CPACK_BINARY_WIX "")
SET(CPACK_BINARY_ZIP "")
SET(CPACK_CMAKE_GENERATOR "Unix Makefiles")
SET(CPACK_COMPONENTS_ALL "cisstCommon;cisstVector;cisstOSAbstraction;cisstNumerical;cisstMultiTask;cisstParameterTypes;cisstRobot;cisstCommonXML")
SET(CPACK_COMPONENTS_ALL_SET_BY_USER "TRUE")
SET(CPACK_COMPONENT_CISSTCOMMONXML_DEPENDS "cisstCommon")
SET(CPACK_COMPONENT_CISSTCOMMON_REQUIRED "ON")
SET(CPACK_COMPONENT_CISSTMULTITASK_DEPENDS "cisstCommon;cisstVector;cisstOSAbstraction")
SET(CPACK_COMPONENT_CISSTNUMERICAL_DEPENDS "cisstCommon;cisstVector")
SET(CPACK_COMPONENT_CISSTOSABSTRACTION_DEPENDS "cisstCommon")
SET(CPACK_COMPONENT_CISSTPARAMETERTYPES_DEPENDS "cisstCommon;cisstVector;cisstOSAbstraction;cisstMultiTask")
SET(CPACK_COMPONENT_CISSTROBOT_DEPENDS "cisstCommon;cisstVector;cisstNumerical")
SET(CPACK_COMPONENT_CISSTSTEREOVISION_DEPENDS "cisstCommon;cisstVector;cisstOSAbstraction;cisstMultiTask")
SET(CPACK_COMPONENT_CISSTVECTOR_DEPENDS "cisstCommon")
SET(CPACK_COMPONENT_UNSPECIFIED_HIDDEN "TRUE")
SET(CPACK_COMPONENT_UNSPECIFIED_REQUIRED "TRUE")
SET(CPACK_GENERATOR "STGZ;TGZ;TZ")
SET(CPACK_INSTALL_CMAKE_PROJECTS "/home/arclab/catkin_ws/src/cisst-saw;cisst-saw;ALL;/")
SET(CPACK_INSTALL_PREFIX "/usr/local")
SET(CPACK_MODULE_PATH "/home/arclab/catkin_ws/src/cisst-saw/cisst/cmake")
SET(CPACK_NSIS_DISPLAY_NAME "cisst")
SET(CPACK_NSIS_INSTALLER_ICON_CODE "")
SET(CPACK_NSIS_INSTALLER_MUI_ICON_CODE "")
SET(CPACK_NSIS_INSTALL_ROOT "$PROGRAMFILES")
SET(CPACK_NSIS_PACKAGE_NAME "cisst")
SET(CPACK_OUTPUT_CONFIG_FILE "/home/arclab/catkin_ws/src/cisst-saw/CPackConfig.cmake")
SET(CPACK_PACKAGE_DEFAULT_LOCATION "/")
SET(CPACK_PACKAGE_DESCRIPTION_FILE "/usr/share/cmake-2.8/Templates/CPack.GenericDescription.txt")
SET(CPACK_PACKAGE_DESCRIPTION_SUMMARY "cisst-saw built using CMake")
SET(CPACK_PACKAGE_FILE_NAME "cisst-saw-1.0.8-Linux")
SET(CPACK_PACKAGE_INSTALL_DIRECTORY "cisst")
SET(CPACK_PACKAGE_INSTALL_REGISTRY_KEY "cisst")
SET(CPACK_PACKAGE_NAME "cisst-saw")
SET(CPACK_PACKAGE_RELOCATABLE "true")
SET(CPACK_PACKAGE_VENDOR "JHU")
SET(CPACK_PACKAGE_VERSION "1.0.8")
SET(CPACK_PACKAGE_VERSION_MAJOR "1")
SET(CPACK_PACKAGE_VERSION_MINOR "0")
SET(CPACK_PACKAGE_VERSION_PATCH "8")
SET(CPACK_RESOURCE_FILE_LICENSE "/home/arclab/catkin_ws/src/cisst-saw/cisst/license.txt")
SET(CPACK_RESOURCE_FILE_README "/usr/share/cmake-2.8/Templates/CPack.GenericDescription.txt")
SET(CPACK_RESOURCE_FILE_WELCOME "/usr/share/cmake-2.8/Templates/CPack.GenericWelcome.txt")
SET(CPACK_SET_DESTDIR "OFF")
SET(CPACK_SOURCE_CYGWIN "")
SET(CPACK_SOURCE_GENERATOR "TGZ;TBZ2;TZ")
SET(CPACK_SOURCE_OUTPUT_CONFIG_FILE "/home/arclab/catkin_ws/src/cisst-saw/CPackSourceConfig.cmake")
SET(CPACK_SOURCE_TBZ2 "ON")
SET(CPACK_SOURCE_TGZ "ON")
SET(CPACK_SOURCE_TZ "ON")
SET(CPACK_SOURCE_ZIP "OFF")
SET(CPACK_SYSTEM_NAME "Linux")
SET(CPACK_TOPLEVEL_TAG "Linux")
SET(CPACK_WIX_SIZEOF_VOID_P "8")
