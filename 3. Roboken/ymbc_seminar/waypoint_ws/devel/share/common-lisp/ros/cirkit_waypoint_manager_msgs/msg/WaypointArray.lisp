; Auto-generated. Do not edit!


(cl:in-package cirkit_waypoint_manager_msgs-msg)


;//! \htmlinclude WaypointArray.msg.html

(cl:defclass <WaypointArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector cirkit_waypoint_manager_msgs-msg:Waypoint)
   :initform (cl:make-array 0 :element-type 'cirkit_waypoint_manager_msgs-msg:Waypoint :initial-element (cl:make-instance 'cirkit_waypoint_manager_msgs-msg:Waypoint))))
)

(cl:defclass WaypointArray (<WaypointArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name cirkit_waypoint_manager_msgs-msg:<WaypointArray> is deprecated: use cirkit_waypoint_manager_msgs-msg:WaypointArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cirkit_waypoint_manager_msgs-msg:header-val is deprecated.  Use cirkit_waypoint_manager_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <WaypointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader cirkit_waypoint_manager_msgs-msg:waypoints-val is deprecated.  Use cirkit_waypoint_manager_msgs-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointArray>) ostream)
  "Serializes a message object of type '<WaypointArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointArray>) istream)
  "Deserializes a message object of type '<WaypointArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'cirkit_waypoint_manager_msgs-msg:Waypoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointArray>)))
  "Returns string type for a message object of type '<WaypointArray>"
  "cirkit_waypoint_manager_msgs/WaypointArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointArray)))
  "Returns string type for a message object of type 'WaypointArray"
  "cirkit_waypoint_manager_msgs/WaypointArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointArray>)))
  "Returns md5sum for a message object of type '<WaypointArray>"
  "33b4e9bd7ee512ebf01678e5b04340d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointArray)))
  "Returns md5sum for a message object of type 'WaypointArray"
  "33b4e9bd7ee512ebf01678e5b04340d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointArray>)))
  "Returns full string definition for message of type '<WaypointArray>"
  (cl:format cl:nil "Header header~%Waypoint[] waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cirkit_waypoint_manager_msgs/Waypoint~%Header header~%int32 number~%geometry_msgs/Pose pose~%int32 is_search_area~%float64 reach_tolerance~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointArray)))
  "Returns full string definition for message of type 'WaypointArray"
  (cl:format cl:nil "Header header~%Waypoint[] waypoints~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: cirkit_waypoint_manager_msgs/Waypoint~%Header header~%int32 number~%geometry_msgs/Pose pose~%int32 is_search_area~%float64 reach_tolerance~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointArray
    (cl:cons ':header (header msg))
    (cl:cons ':waypoints (waypoints msg))
))
