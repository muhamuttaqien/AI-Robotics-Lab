;; Auto-generated. Do not edit!


(when (boundp 'cirkit_waypoint_manager_msgs::Waypoint)
  (if (not (find-package "CIRKIT_WAYPOINT_MANAGER_MSGS"))
    (make-package "CIRKIT_WAYPOINT_MANAGER_MSGS"))
  (shadow 'Waypoint (find-package "CIRKIT_WAYPOINT_MANAGER_MSGS")))
(unless (find-package "CIRKIT_WAYPOINT_MANAGER_MSGS::WAYPOINT")
  (make-package "CIRKIT_WAYPOINT_MANAGER_MSGS::WAYPOINT"))

(in-package "ROS")
;;//! \htmlinclude Waypoint.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cirkit_waypoint_manager_msgs::Waypoint
  :super ros::object
  :slots (_header _number _pose _is_search_area _reach_tolerance ))

(defmethod cirkit_waypoint_manager_msgs::Waypoint
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:number __number) 0)
    ((:pose __pose) (instance geometry_msgs::Pose :init))
    ((:is_search_area __is_search_area) 0)
    ((:reach_tolerance __reach_tolerance) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _number (round __number))
   (setq _pose __pose)
   (setq _is_search_area (round __is_search_area))
   (setq _reach_tolerance (float __reach_tolerance))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:number
   (&optional __number)
   (if __number (setq _number __number)) _number)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:is_search_area
   (&optional __is_search_area)
   (if __is_search_area (setq _is_search_area __is_search_area)) _is_search_area)
  (:reach_tolerance
   (&optional __reach_tolerance)
   (if __reach_tolerance (setq _reach_tolerance __reach_tolerance)) _reach_tolerance)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int32 _number
    4
    ;; geometry_msgs/Pose _pose
    (send _pose :serialization-length)
    ;; int32 _is_search_area
    4
    ;; float64 _reach_tolerance
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int32 _number
       (write-long _number s)
     ;; geometry_msgs/Pose _pose
       (send _pose :serialize s)
     ;; int32 _is_search_area
       (write-long _is_search_area s)
     ;; float64 _reach_tolerance
       (sys::poke _reach_tolerance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int32 _number
     (setq _number (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;; int32 _is_search_area
     (setq _is_search_area (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _reach_tolerance
     (setq _reach_tolerance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get cirkit_waypoint_manager_msgs::Waypoint :md5sum-) "522a0978e774a47933c16d3e9d0fcf91")
(setf (get cirkit_waypoint_manager_msgs::Waypoint :datatype-) "cirkit_waypoint_manager_msgs/Waypoint")
(setf (get cirkit_waypoint_manager_msgs::Waypoint :definition-)
      "Header header
int32 number
geometry_msgs/Pose pose
int32 is_search_area
float64 reach_tolerance
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :cirkit_waypoint_manager_msgs/Waypoint "522a0978e774a47933c16d3e9d0fcf91")


