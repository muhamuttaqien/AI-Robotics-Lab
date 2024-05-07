; Auto-generated. Do not edit!


(cl:in-package ypspur_ros-msg)


;//! \htmlinclude ControlMode.msg.html

(cl:defclass <ControlMode> (roslisp-msg-protocol:ros-message)
  ((vehicle_control_mode
    :reader vehicle_control_mode
    :initarg :vehicle_control_mode
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ControlMode (<ControlMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ypspur_ros-msg:<ControlMode> is deprecated: use ypspur_ros-msg:ControlMode instead.")))

(cl:ensure-generic-function 'vehicle_control_mode-val :lambda-list '(m))
(cl:defmethod vehicle_control_mode-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ypspur_ros-msg:vehicle_control_mode-val is deprecated.  Use ypspur_ros-msg:vehicle_control_mode instead.")
  (vehicle_control_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControlMode>)))
    "Constants for message type '<ControlMode>"
  '((:OPEN . 0)
    (:TORQUE . 1)
    (:VELOCITY . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControlMode)))
    "Constants for message type 'ControlMode"
  '((:OPEN . 0)
    (:TORQUE . 1)
    (:VELOCITY . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMode>) ostream)
  "Serializes a message object of type '<ControlMode>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_control_mode)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMode>) istream)
  "Deserializes a message object of type '<ControlMode>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'vehicle_control_mode)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMode>)))
  "Returns string type for a message object of type '<ControlMode>"
  "ypspur_ros/ControlMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode)))
  "Returns string type for a message object of type 'ControlMode"
  "ypspur_ros/ControlMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMode>)))
  "Returns md5sum for a message object of type '<ControlMode>"
  "93c0f4fc5070bdb87f70b0914a2708f4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMode)))
  "Returns md5sum for a message object of type 'ControlMode"
  "93c0f4fc5070bdb87f70b0914a2708f4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMode>)))
  "Returns full string definition for message of type '<ControlMode>"
  (cl:format cl:nil "uint8 vehicle_control_mode~%~%uint8 OPEN = 0~%uint8 TORQUE = 1~%uint8 VELOCITY = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMode)))
  "Returns full string definition for message of type 'ControlMode"
  (cl:format cl:nil "uint8 vehicle_control_mode~%~%uint8 OPEN = 0~%uint8 TORQUE = 1~%uint8 VELOCITY = 2~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMode>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMode>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMode
    (cl:cons ':vehicle_control_mode (vehicle_control_mode msg))
))
