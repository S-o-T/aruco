/**
Copyright 2017 Rafael Muñoz Salinas. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are
permitted provided that the following conditions are met:

   1. Redistributions of source code must retain the above copyright notice, this list of
      conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above copyright notice, this list
      of conditions and the following disclaimer in the documentation and/or other materials
      provided with the distribution.

THIS SOFTWARE IS PROVIDED BY Rafael Muñoz Salinas ''AS IS'' AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Rafael Muñoz Salinas OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the
authors and should not be interpreted as representing official policies, either expressed
or implied, of Rafael Muñoz Salinas.
*/

#ifndef _ArUco_DrawUtils_H_
#define _ArUco_DrawUtils_H_

#include <aruco/aruco.h>
#include <aruco/aruco_export.h>

namespace aruco
{
    /**\brief A set of functions to draw in opencv images
     */
    class ARUCO_EXPORT CvDrawingUtils
    {
    public:

        static void draw3dAxis(cv::Mat& Image, const CameraParameters& CP, const cv::Mat& Rvec, const cv::Mat& Tvec,
                               float axis_size);
        static void draw3dAxis(cv::Mat& Image, Marker& m, const CameraParameters& CP,int lineSize=1);

        static void draw3dCube(cv::Mat& Image, Marker& m, const CameraParameters& CP,int lineSize=1, bool setYperpendicular = false);

        //    static void draw3dAxis(cv::Mat &Image, MarkerMap &m, const CameraParameters &CP);
        //    static void draw3dCube(cv::Mat &Image, MarkerMap &m, const CameraParameters &CP, bool setYperpendicular =
        //    false);
    };
}

#endif
