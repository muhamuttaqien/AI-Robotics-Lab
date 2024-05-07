# Install script for directory: /home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/muttaqien-m/waypoint_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/srv" TYPE FILE FILES "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/cmake" TYPE FILE FILES "/home/muttaqien-m/waypoint_ws/build/cirkit_waypoint_manager/cirkit_waypoint_navigator/catkin_generated/installspace/cirkit_waypoint_navigator-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/devel/include/cirkit_waypoint_navigator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/devel/share/roseus/ros/cirkit_waypoint_navigator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/devel/share/common-lisp/ros/cirkit_waypoint_navigator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/devel/share/gennodejs/ros/cirkit_waypoint_navigator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/muttaqien-m/waypoint_ws/devel/lib/python3/dist-packages/cirkit_waypoint_navigator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/devel/lib/python3/dist-packages/cirkit_waypoint_navigator")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/muttaqien-m/waypoint_ws/build/cirkit_waypoint_manager/cirkit_waypoint_navigator/catkin_generated/installspace/cirkit_waypoint_navigator.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/cmake" TYPE FILE FILES "/home/muttaqien-m/waypoint_ws/build/cirkit_waypoint_manager/cirkit_waypoint_navigator/catkin_generated/installspace/cirkit_waypoint_navigator-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/cmake" TYPE FILE FILES
    "/home/muttaqien-m/waypoint_ws/build/cirkit_waypoint_manager/cirkit_waypoint_navigator/catkin_generated/installspace/cirkit_waypoint_navigatorConfig.cmake"
    "/home/muttaqien-m/waypoint_ws/build/cirkit_waypoint_manager/cirkit_waypoint_navigator/catkin_generated/installspace/cirkit_waypoint_navigatorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator" TYPE FILE FILES "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator" TYPE EXECUTABLE FILES "/home/muttaqien-m/waypoint_ws/devel/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node"
         OLD_RPATH "/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cirkit_waypoint_navigator/cirkit_waypoint_navigator_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/cirkit_waypoint_navigator" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/include")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/launch" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/launch/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/waypoints" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/waypoints/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/waypoints/ekiden_final/first" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/waypoints/ekiden_final/first/")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cirkit_waypoint_navigator/waypoints/ekiden_final/second" TYPE DIRECTORY FILES "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/waypoints/ekiden_final/second/")
endif()

