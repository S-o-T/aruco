# ----------------------------------------------------------------------------
#   Basic Configuration
# ----------------------------------------------------------------------------
cmake_minimum_required(VERSION 3.0)
project(aruco VERSION "3.0.13" LANGUAGES CXX)

include(cmake/options.cmake)
include(cmake/findDependencies.cmake)
include(cmake/compilerOptions.cmake)

if(ARUCO_BUILD_SHARED_LIBS)
  add_library(aruco SHARED)
else()
  add_library(aruco STATIC)
endif()
target_sources(aruco PRIVATE
        src/cameraparameters.cpp
        src/cvdrawingutils.cpp
        src/dictionary.cpp
        src/ippe.cpp
        src/marker.cpp
        src/markerdetector.cpp
        src/markerlabeler.cpp
        src/markermap.cpp
        src/posetracker.cpp
        src/dictionary_based.cpp
        src/debug.cpp
        src/svmmarkers.cpp
        )
target_include_directories(aruco PUBLIC $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>)
set_target_properties(aruco PROPERTIES          # create *nix style library versions + symbolic links
        DEFINE_SYMBOL ARUCO_DSO_EXPORTS
        )
target_link_libraries(aruco PUBLIC Eigen3::Eigen opencv_core opencv_imgproc opencv_calib3d opencv_features2d opencv_ml opencv_highgui Threads::Threads)
target_compile_features(aruco PRIVATE cxx_std_11)
target_compile_definitions(aruco PRIVATE USE_SVM_LABELER)
set_target_compile_options(aruco)

if(ARUCO_BUILD_UTILS)
  add_subdirectory(utils)
  add_subdirectory(utils_markermap)
  add_subdirectory(utils_calibration)
  add_subdirectory(utils_svm)
endif()
include(cmake/printInfo.cmake)
