# ----------------------------------------------------------------------------
# display status message for important variables
# ----------------------------------------------------------------------------
message( STATUS )
message( STATUS "-------------------------------------------------------------------------------" )
message( STATUS "General configuration for ${PROJECT_NAME} ${PROJECT_VERSION}")
message( STATUS "-------------------------------------------------------------------------------" )
message( STATUS )
message( STATUS "Compiler:"                   "${CMAKE_COMPILER}"   "${CMAKE_CXX_COMPILER}")
message( STATUS "CMAKE_BINARY_DIR:         ${CMAKE_BINARY_DIR}")

message( STATUS )
message( STATUS "CMAKE_SYSTEM_PROCESSOR = ${CMAKE_SYSTEM_PROCESSOR}" )
message( STATUS "ARUCO_BUILD_SHARED_LIBS = ${ARUCO_BUILD_SHARED_LIBS}" )
message( STATUS "CMAKE_INSTALL_PREFIX = ${CMAKE_INSTALL_PREFIX}" )
message( STATUS "CMAKE_BUILD_TYPE = ${CMAKE_BUILD_TYPE}" )
message( STATUS )
message( STATUS "USE_DOUBLE_PRECISION_PNP = ${USE_DOUBLE_PRECISION_PNP}" )
message( STATUS "BUILD_UTILS = ${BUILD_UTILS}" )
message( STATUS "USE_OWN_EIGEN3=${USE_OWN_EIGEN3}")

message( STATUS "OpenCV_LIB_DIR=${OpenCV_LIBS} OpenCV_INCLUDE_DIRS=${OpenCV_INCLUDE_DIRS}")
message( STATUS "CMAKE_INSTALL_PREFIX=${CMAKE_BINARY_DIR}")
message( STATUS "EIGEN3_INCLUDE_DIR=${EIGEN3_INCLUDE_DIR}")
