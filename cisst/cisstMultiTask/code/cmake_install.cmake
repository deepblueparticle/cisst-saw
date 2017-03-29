# Install script for directory: /home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/code

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cisstMultiTask" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstMultiTask/mtsConfig.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstMultiTaskBuild.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstMultiTask.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstMultiTask.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstMultiTask.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/lib/libcisstMultiTask.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstMultiTask.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstMultiTask.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstMultiTask.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstMultiTask.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstMultiTaskInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstMultiTaskInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstMultiTaskInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cisstMultiTask" TYPE FILE FILES
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableQualifiedReadBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableQualifiedReadMethod.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableQualifiedReadReturnVoidMethod.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableReadBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableReadMethod.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableReadReturnVoidMethod.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableVoidBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableVoidFunction.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableVoidMethod.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableVoidReturnBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableVoidReturnMethod.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableWriteReturnBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCallableWriteReturnMethod.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCollectorBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCollectorEvent.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCollectorFactory.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCollectorState.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandFilteredQueuedWrite.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandFilteredWrite.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandQualifiedRead.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandQueuedVoid.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandQueuedVoidReturn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandQueuedWrite.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandQueuedWriteBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandQueuedWriteReturn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandRead.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandVoid.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandVoidReturn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandWrite.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandWriteBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsCommandWriteReturn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsComponent.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsComponentAddLatency.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsComponentGeneratorMacros.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsComponentViewer.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsConnection.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsEventReceiver.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsExport.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFixedSizeVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFixedSizeVectorTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsForwardDeclarations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFunctionBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFunctionQualifiedRead.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFunctionRead.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFunctionVoid.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFunctionVoidReturn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFunctionWrite.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsFunctionWriteReturn.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsGenericObject.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsGenericObjectProxy.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsInterface.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsInterfaceInput.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsInterfaceOutput.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsInterfaceProvided.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsInterfaceRequired.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsIntervalStatistics.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsLODMultiplexerStreambuf.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsMacros.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsMailBox.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerComponentBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerComponentClient.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerComponentServer.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerComponentServices.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerGlobal.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerGlobalInterface.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerLocal.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsManagerLocalInterface.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsMatrix.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsMulticastCommandVoid.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsMulticastCommandWrite.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsMulticastCommandWriteBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsParameterTypesOld.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsQueue.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsSocketProxyClient.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsSocketProxyCommon.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsSocketProxyServer.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsStateArray.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsStateArrayBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsStateData.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsStateIndex.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsStateTable.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsTask.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsTaskContinuous.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsTaskFromCallback.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsTaskFromSignal.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsTaskManager.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsTaskPeriodic.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsTransformationTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsWatchdogClient.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstMultiTask/mtsWatchdogServer.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstMultiTask.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstMultiTask")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cisstMultiTask" TYPE FILE FILES
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstMultiTask/mtsInterfaceCommon.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstMultiTask/mtsComponentState.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstMultiTask/mtsExecutionResult.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstMultiTask/mtsParameterTypes.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

