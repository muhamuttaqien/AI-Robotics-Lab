;; Auto-generated. Do not edit!


(when (boundp 'cirkit_waypoint_manager_msgs::WaypointArray)
  (if (not (find-package "CIRKIT_WAYPOINT_MANAGER_MSGS"))
    (make-package "CIRKIT_WAYPOINT_MANAGER_MSGS"))
  (shadow 'WaypointArray (find-package "CIRKIT_WAYPOINT_MANAGER_MSGS")))
(unless (find-package "CIRKIT_WAYPOINT_MANAGER_MSGS::WAYPOINTARRAY")
  (make-package "CIRKIT_WAYPOINT_MANAGER_MSGS::WAYPOINTARRAY"))

(in-package "ROS")
;;//! \htmlinclude WaypointArray.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass cirkit_waypoint_manager_msgs::WaypointArray
  :super ros::object
  :slots (_header _waypoints ))

(defmethod cirkit_waypoint_manager_msgs::WaypointArray
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:waypoints __waypoints) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _waypoints __waypoints)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:waypoints
   (&rest __waypoints)
   (if (keywordp (car __waypoints))
       (send* _waypoints __waypoints)
     (progn
       (if __waypoints (setq _waypoints (car __waypoints)))
       _waypoints)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; cirkit_waypoint_manager_msgs/Waypoint[] _waypoints
    (apply #'+ (send-all _waypoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; cirkit_waypoint_manager_msgs/Waypoint[] _waypoints
     (write-long (length _waypoints) s)
     (dolist (elem _waypoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; cirkit_waypoint_manager_msgs/Waypoint[] _waypoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _waypoints (let (r) (dotimes (i n) (push (instance cirkit_waypoint_manager_msgs::Waypoint :init) r)) r))
     (dolist (elem- _waypoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get cirkit_waypoint_manager_msgs::WaypointArray :md5sum-) "33b4e9bd7ee512ebf01678e5b04340d6")
(setf (get cirkit_waypoint_manager_msgs::WaypointArray :datatype-) "cirkit_waypoint_manager_msgs/WaypointArray")
(setf (get cirkit_waypoint_manager_msgs::WaypointArray :definition-)
      "Header header
Waypoint[] waypoints
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
MSG: cirkit_waypoint_manager_msgs/Waypoint
Header header
int32 number
geometry_msgs/Pose pose
int32 is_search_area
float64 reach_tolerance
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



(provide :cirkit_waypoint_manager_msgs/WaypointArray "33b4e9bd7ee512ebf01678e5b04340d6")


