add_executable(aruco_calibration aruco_calibration.cpp calibrator.h calibrator.cpp )
add_executable(aruco_calibration_fromimages aruco_calibration_fromimages.cpp dirreader.h)

target_link_libraries(aruco_calibration             aruco opencv_calib3d opencv_videoio opencv_highgui)
target_link_libraries(aruco_calibration_fromimages  aruco opencv_calib3d opencv_highgui)
