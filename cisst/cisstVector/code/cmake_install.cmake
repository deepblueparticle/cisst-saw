# Install script for directory: /home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/code

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstVectorExternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstVector.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstVector.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstVector.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/lib/libcisstVector.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstVector.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstVector.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstVector.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstVector.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstVectorInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cisstVector" TYPE FILE FILES
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctAngleRotation2.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctAxisAngleRotation3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctBarycentricVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctBinaryOperations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctContainerTraits.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsDynamicMatrix.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsDynamicMatrixJSON.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsDynamicVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsDynamicVectorJSON.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsFixedSizeMatrix.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsFixedSizeMatrixJSON.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsFixedSizeVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsFixedSizeVectorJSON.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsTransformations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDataFunctionsTransformationsJSON.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDeterminant.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicCompactLoopEngines.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicConstMatrixBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicConstMatrixRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicConstNArrayBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicConstNArrayRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicConstVectorBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicConstVectorRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicMatrix.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicMatrixBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicMatrixLoopEngines.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicMatrixOwner.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicMatrixRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicMatrixRefOwner.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicMatrixTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicNArray.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicNArrayBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicNArrayLoopEngines.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicNArrayOwner.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicNArrayRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicNArrayRefOwner.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicVectorBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicVectorLoopEngines.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicVectorOwner.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicVectorRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicVectorRefOwner.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctDynamicVectorTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctEulerRotation3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctExport.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFastCopy.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeConstMatrixBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeConstMatrixRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeConstVectorBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeConstVectorRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeMatrix.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeMatrixBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeMatrixLoopEngines.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeMatrixRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeMatrixTraits.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeMatrixTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeVectorBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeVectorRecursiveEngines.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeVectorRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeVectorTraits.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedSizeVectorTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedStrideMatrixIterator.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFixedStrideVectorIterator.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctForwardDeclarations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFrame4x4.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFrame4x4Base.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFrame4x4ConstBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctFrameBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctMatrixRotation2.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctMatrixRotation2Base.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctMatrixRotation3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctMatrixRotation3Base.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctMatrixRotation3ConstBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctMatrixRotation3ConstRef.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctMatrixRotation3Ref.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctPlot2DBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctPlot2DOpenGL.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctPrintf.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctQuaternion.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctQuaternionBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctQuaternionRotation3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctQuaternionRotation3Base.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRandom.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRandomDynamicMatrix.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRandomDynamicNArray.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRandomDynamicVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRandomFixedSizeMatrix.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRandomFixedSizeVector.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRandomTransformations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRodriguezRotation3.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctRodriguezRotation3Base.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctStoreBackBinaryOperations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctStoreBackUnaryOperations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctTransformationTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctTypes.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctUnaryOperations.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctVarStrideMatrixIterator.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctVarStrideNArrayIterator.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstVector/vctVarStrideVectorIterator.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstVector.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstVector")

