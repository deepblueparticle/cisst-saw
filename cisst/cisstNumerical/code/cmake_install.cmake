# Install script for directory: /home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/code

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cisstNumerical" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstNumerical/nmrConfig.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstNumerical.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstNumerical.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstNumerical.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/lib/libcisstNumerical.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstNumerical.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstNumerical.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstNumerical.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libcisstNumerical.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstNumericalInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstNumericalInternal.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cisstNumerical" TYPE FILE FILES
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrBernsteinPolynomial.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrBernsteinPolynomialLineIntegral.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrCallBack.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrConstraintOptimizer.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrDynAllocPolynomialContainer.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrExport.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrGaussJordanInverse.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrHFTISolver.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrInverse.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrInverseSPD.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrIsOrthonormal.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrLDPSolver.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrLSMinNorm.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrLSSolver.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrLSqLin.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrLU.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrLinearRegression.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrMultiIndexCounter.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrMultiVariablePowerBasis.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrNNLSSolver.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrNetlib.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrPInverse.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrPInverseEconomy.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrPolynomialBase.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrPolynomialContainer.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrPolynomialTermPowerIndex.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrRegistrationRigid.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrSVD.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrSVDEconomy.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrSVDRSSolver.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrSavitzkyGolay.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrSingleVariablePowerBasis.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrStandardPolynomial.h"
    "/home/arclab/catkin_ws/src/cisst-saw/cisst/cisstNumerical/nmrSymmetricEigenProblem.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/include/cisstNumerical.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cisst-1.0/cmake" TYPE FILE FILES "/home/arclab/catkin_ws/src/cisst-saw/cisst/share/cisst-1.0/cmake/cisstNumericalBuild.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "cisstNumerical")

