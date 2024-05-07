# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "ypspur_ros: 4 messages, 0 services")

set(MSG_I_FLAGS "-Iypspur_ros:/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(ypspur_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg" NAME_WE)
add_custom_target(_ypspur_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ypspur_ros" "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg" ""
)

get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg" NAME_WE)
add_custom_target(_ypspur_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ypspur_ros" "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg" NAME_WE)
add_custom_target(_ypspur_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ypspur_ros" "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg" ""
)

get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg" NAME_WE)
add_custom_target(_ypspur_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "ypspur_ros" "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ypspur_ros
)
_generate_msg_cpp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ypspur_ros
)
_generate_msg_cpp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ypspur_ros
)
_generate_msg_cpp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ypspur_ros
)

### Generating Services

### Generating Module File
_generate_module_cpp(ypspur_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ypspur_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(ypspur_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(ypspur_ros_generate_messages ypspur_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_cpp _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_cpp _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_cpp _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_cpp _ypspur_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ypspur_ros_gencpp)
add_dependencies(ypspur_ros_gencpp ypspur_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ypspur_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ypspur_ros
)
_generate_msg_eus(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ypspur_ros
)
_generate_msg_eus(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ypspur_ros
)
_generate_msg_eus(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ypspur_ros
)

### Generating Services

### Generating Module File
_generate_module_eus(ypspur_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ypspur_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(ypspur_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(ypspur_ros_generate_messages ypspur_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_eus _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_eus _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_eus _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_eus _ypspur_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ypspur_ros_geneus)
add_dependencies(ypspur_ros_geneus ypspur_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ypspur_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ypspur_ros
)
_generate_msg_lisp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ypspur_ros
)
_generate_msg_lisp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ypspur_ros
)
_generate_msg_lisp(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ypspur_ros
)

### Generating Services

### Generating Module File
_generate_module_lisp(ypspur_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ypspur_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(ypspur_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(ypspur_ros_generate_messages ypspur_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_lisp _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_lisp _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_lisp _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_lisp _ypspur_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ypspur_ros_genlisp)
add_dependencies(ypspur_ros_genlisp ypspur_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ypspur_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ypspur_ros
)
_generate_msg_nodejs(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ypspur_ros
)
_generate_msg_nodejs(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ypspur_ros
)
_generate_msg_nodejs(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ypspur_ros
)

### Generating Services

### Generating Module File
_generate_module_nodejs(ypspur_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ypspur_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(ypspur_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(ypspur_ros_generate_messages ypspur_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_nodejs _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_nodejs _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_nodejs _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_nodejs _ypspur_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ypspur_ros_gennodejs)
add_dependencies(ypspur_ros_gennodejs ypspur_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ypspur_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros
)
_generate_msg_py(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros
)
_generate_msg_py(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros
)
_generate_msg_py(ypspur_ros
  "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros
)

### Generating Services

### Generating Module File
_generate_module_py(ypspur_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(ypspur_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(ypspur_ros_generate_messages ypspur_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalOutput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_py _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/DigitalInput.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_py _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/ControlMode.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_py _ypspur_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/muttaqien-m/ymbc-seminar/hcai_ws/src/ypspur_ros/msg/JointPositionControl.msg" NAME_WE)
add_dependencies(ypspur_ros_generate_messages_py _ypspur_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(ypspur_ros_genpy)
add_dependencies(ypspur_ros_genpy ypspur_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS ypspur_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ypspur_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/ypspur_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(ypspur_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ypspur_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/ypspur_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(ypspur_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ypspur_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/ypspur_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(ypspur_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ypspur_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/ypspur_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(ypspur_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/ypspur_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(ypspur_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
