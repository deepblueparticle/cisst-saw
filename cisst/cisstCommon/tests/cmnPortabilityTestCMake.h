/* -*- Mode: C++; tab-width: 4; indent-tabs-mode: nil; c-basic-offset: 4 -*-    */
/* ex: set filetype=cpp softtabstop=4 shiftwidth=4 tabstop=4 cindent expandtab: */

/*
  $Id$
  
  Author(s):  Anton Deguet
  Created on: 2003-09-12

  (C) Copyright 2003-2007 Johns Hopkins University (JHU), All Rights
  Reserved.

--- begin cisst license - do not edit ---

This software is provided "as is" under an open source license, with
no warranty.  The complete license can be found in license.txt and
http://www.cisst.org/cisst/license.txt.

--- end cisst license ---
*/


// This file is to be processed by CMake to generate the correct
// values.  It is then included by cmnPortability.cpp.

// same as uname -s
#define CISST_CMAKE_SYSTEM_NAME "Linux"
#define CISST_CMAKE_SYSTEM_VERSION "4.4.0-59-generic"

#define CISST_CMAKE_GENERATOR "Unix Makefiles"

// gcc, cl, etc.
#define CISST_CMAKE_C_COMPILER "cc"

// g++, c++, cl, etc
#define CISST_CMAKE_CXX_COMPILER "c++"

// is it a gnu compiler
#define CISST_CMAKE_COMPILER_IS_GNUCXX "1"

