#------------------------------------------------------
# Build type
#------------------------------------------------------

if(NOT CMAKE_BUILD_TYPE )
   set( CMAKE_BUILD_TYPE "Debug" )
endif()

#------------------------------------------------------
# Lib Names and Dirs
#------------------------------------------------------

option(ARUCO_USE_OWN_EIGEN3	"Set to OFF to use a standard eigen3 version" ON)
option(ARUCO_USE_DOUBLE_PRECISION_PNP "Set Double/float precision for posetracker" ON)
option(ARUCO_BUILD_UTILS	"Set to OFF to not compile utils " OFF)
option(ARUCO_BUILD_SHARED_LIBS 	"Set to OFF to build static libraries" OFF)
