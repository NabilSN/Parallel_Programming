# Install script for directory: /gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/src/TP2

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe"
         RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin" TYPE EXECUTABLE FILES "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/build/src/TP2/spmv.exe")
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe"
         OLD_RPATH "/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/softs/binutils/2.32/bin/strip" "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/spmv.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe"
         RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin" TYPE EXECUTABLE FILES "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/build/src/TP2/densemv.exe")
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe"
         OLD_RPATH "/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/softs/binutils/2.32/bin/strip" "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe"
         RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin" TYPE EXECUTABLE FILES "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/build/src/TP2/densemv_mpi.exe")
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe"
         OLD_RPATH "/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/softs/binutils/2.32/bin/strip" "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/densemv_mpi.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe"
         RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin" TYPE EXECUTABLE FILES "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/build/src/TP2/sparsemv_mpi1.exe")
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe"
         OLD_RPATH "/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/softs/binutils/2.32/bin/strip" "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi1.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe"
         RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin" TYPE EXECUTABLE FILES "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/build/src/TP2/sparsemv_mpi.exe")
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe"
         OLD_RPATH "/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/softs/binutils/2.32/bin/strip" "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparsemv_mpi.exe")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe"
         RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin" TYPE EXECUTABLE FILES "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/build/src/TP2/sparseemv_mpi2.exe")
  if(EXISTS "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe"
         OLD_RPATH "/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/lib:/softs/boost/1.63.0/lib:/softs/mpi/openmpi-1.10.7/gcc-7.3.0/lib:/softs/opencv/4.6.0/lib64")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/softs/binutils/2.32/bin/strip" "$ENV{DESTDIR}/gext/nabil.snidi/ParallelProgrammingCourse/TPs/ParallelProgrammingTP/bin/sparseemv_mpi2.exe")
    endif()
  endif()
endif()

