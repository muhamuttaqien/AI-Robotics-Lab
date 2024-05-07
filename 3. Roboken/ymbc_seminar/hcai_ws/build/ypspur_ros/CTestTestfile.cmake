# CMake generated Testfile for 
# Source directory: /home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros
# Build directory: /home/muttaqien-m/ymbc-seminar/hcai_ws/build/ypspur_ros
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_ypspur_ros_roslint_package "/home/muttaqien-m/ymbc-seminar/hcai_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/muttaqien-m/ymbc-seminar/hcai_ws/build/test_results/ypspur_ros/roslint-ypspur_ros.xml" "--working-dir" "/home/muttaqien-m/ymbc-seminar/hcai_ws/build/ypspur_ros" "--return-code" "/opt/ros/noetic/share/roslint/cmake/../../../lib/roslint/test_wrapper /home/muttaqien-m/ymbc-seminar/hcai_ws/build/test_results/ypspur_ros/roslint-ypspur_ros.xml make roslint_ypspur_ros")
set_tests_properties(_ctest_ypspur_ros_roslint_package PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/roslint/cmake/roslint-extras.cmake;67;catkin_run_tests_target;/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/CMakeLists.txt;98;roslint_add_test;/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/CMakeLists.txt;0;")
subdirs("test")
