# ----------------------------------------------------------------------------
#   Find Dependencies
# ----------------------------------------------------------------------------

find_package(OpenCV REQUIRED)
find_package(Threads REQUIRED)

message(STATUS "OpenCV found, version: ${OpenCV_VERSION} in dir ${OpenCV_INCLUDE_DIRS}")

if(NOT ARUCO_USE_OWN_EIGEN3)
    message(WARNING "If you do not want to install Eigen you can turn on the option USE_OWN_EIGEN3")
    find_package( Eigen3 REQUIRED )
else()
    add_library(aruco_Eigen3 INTERFACE)
    target_include_directories(aruco_Eigen3 INTERFACE $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/3rdparty/eigen3>)
    add_library(Eigen3::Eigen ALIAS aruco_Eigen3)
endif()

if(ARUCO_USE_DOUBLE_PRECISION_PNP)
    add_definitions(-DDOUBLE_PRECISION_PNP)
endif()



