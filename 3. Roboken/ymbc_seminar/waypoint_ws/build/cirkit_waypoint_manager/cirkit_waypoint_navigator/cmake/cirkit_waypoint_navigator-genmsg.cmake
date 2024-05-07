# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cirkit_waypoint_navigator: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cirkit_waypoint_navigator_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv" NAME_WE)
add_custom_target(_cirkit_waypoint_navigator_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cirkit_waypoint_navigator" "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(cirkit_waypoint_navigator
  "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cirkit_waypoint_navigator
)

### Generating Module File
_generate_module_cpp(cirkit_waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cirkit_waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cirkit_waypoint_navigator_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cirkit_waypoint_navigator_generate_messages cirkit_waypoint_navigator_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(cirkit_waypoint_navigator_generate_messages_cpp _cirkit_waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cirkit_waypoint_navigator_gencpp)
add_dependencies(cirkit_waypoint_navigator_gencpp cirkit_waypoint_navigator_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cirkit_waypoint_navigator_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(cirkit_waypoint_navigator
  "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cirkit_waypoint_navigator
)

### Generating Module File
_generate_module_eus(cirkit_waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cirkit_waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cirkit_waypoint_navigator_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cirkit_waypoint_navigator_generate_messages cirkit_waypoint_navigator_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(cirkit_waypoint_navigator_generate_messages_eus _cirkit_waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cirkit_waypoint_navigator_geneus)
add_dependencies(cirkit_waypoint_navigator_geneus cirkit_waypoint_navigator_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cirkit_waypoint_navigator_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(cirkit_waypoint_navigator
  "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cirkit_waypoint_navigator
)

### Generating Module File
_generate_module_lisp(cirkit_waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cirkit_waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cirkit_waypoint_navigator_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cirkit_waypoint_navigator_generate_messages cirkit_waypoint_navigator_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(cirkit_waypoint_navigator_generate_messages_lisp _cirkit_waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cirkit_waypoint_navigator_genlisp)
add_dependencies(cirkit_waypoint_navigator_genlisp cirkit_waypoint_navigator_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cirkit_waypoint_navigator_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(cirkit_waypoint_navigator
  "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cirkit_waypoint_navigator
)

### Generating Module File
_generate_module_nodejs(cirkit_waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cirkit_waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cirkit_waypoint_navigator_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cirkit_waypoint_navigator_generate_messages cirkit_waypoint_navigator_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(cirkit_waypoint_navigator_generate_messages_nodejs _cirkit_waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cirkit_waypoint_navigator_gennodejs)
add_dependencies(cirkit_waypoint_navigator_gennodejs cirkit_waypoint_navigator_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cirkit_waypoint_navigator_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(cirkit_waypoint_navigator
  "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cirkit_waypoint_navigator
)

### Generating Module File
_generate_module_py(cirkit_waypoint_navigator
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cirkit_waypoint_navigator
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cirkit_waypoint_navigator_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cirkit_waypoint_navigator_generate_messages cirkit_waypoint_navigator_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/muttaqien-m/waypoint_ws/src/cirkit_waypoint_manager/cirkit_waypoint_navigator/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(cirkit_waypoint_navigator_generate_messages_py _cirkit_waypoint_navigator_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cirkit_waypoint_navigator_genpy)
add_dependencies(cirkit_waypoint_navigator_genpy cirkit_waypoint_navigator_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cirkit_waypoint_navigator_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cirkit_waypoint_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cirkit_waypoint_navigator
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cirkit_waypoint_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cirkit_waypoint_navigator
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cirkit_waypoint_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cirkit_waypoint_navigator
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cirkit_waypoint_navigator)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cirkit_waypoint_navigator
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cirkit_waypoint_navigator)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cirkit_waypoint_navigator\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cirkit_waypoint_navigator
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
