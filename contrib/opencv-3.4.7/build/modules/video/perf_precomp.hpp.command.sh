#!/bin/sh
if [ -n "$VERBOSE" ]; then
  tail -n1 $0
fi
/work/irlin355_1/gratienj/local/eb_new/centos_7/software/Core/GCCcore/7.3.0/bin/c++ -O3 -DNDEBUG -DNDEBUG -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/build" -isystem"/work/irlin355_1/gratienj/local/eb_new/centos_7/software/MPI/GCC/7.3.0-2.30/impi/2018.3.222/imkl/2018.3.222/mkl/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/build" -isystem"/work/irlin355_1/gratienj/local/eb_new/centos_7/software/MPI/GCC/7.3.0-2.30/impi/2018.3.222/imkl/2018.3.222/mkl/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/ts/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/video/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/imgcodecs/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/core/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/imgproc/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/core/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/imgproc/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/imgcodecs/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/videoio/include" -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/highgui/include" -fsigned-char -W -Wall -Werror=return-type -Werror=non-virtual-dtor -Werror=address -Werror=sequence-point -Wformat -Werror=format-security -Wmissing-declarations -Wundef -Winit-self -Wpointer-arith -Wshadow -Wsign-promo -Wuninitialized -Winit-self -Wno-delete-non-virtual-dtor -Wno-comment -Wimplicit-fallthrough=3 -Wno-strict-overflow -fdiagnostics-show-option -Wno-long-long -pthread -fomit-frame-pointer -ffunction-sections -fdata-sections -msse -msse2 -msse3 -fvisibility=hidden -fvisibility-inlines-hidden -I"/work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/modules/video/perf" -fPIE -x c++-header -o /work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/build/modules/video/perf_precomp.hpp.gch/opencv_perf_video_Release.gch /work/irlin355_1/gratienj/ParallelProgrammingCourse/ParallelProgrammingTP/contrib/opencv-3.4.7/build/modules/video/perf_precomp.hpp '-D__OPENCV_BUILD=1' '-D_USE_MATH_DEFINES' '-D__STDC_CONSTANT_MACROS' '-D__STDC_LIMIT_MACROS' '-D__STDC_FORMAT_MACROS'
