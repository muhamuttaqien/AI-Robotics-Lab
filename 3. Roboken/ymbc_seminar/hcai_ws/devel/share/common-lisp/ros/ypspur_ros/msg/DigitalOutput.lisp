; Auto-generated. Do not edit!


(cl:in-package ypspur_ros-msg)


;//! \htmlinclude DigitalOutput.msg.html

(cl:defclass <DigitalOutput> (roslisp-msg-protocol:ros-message)
  ((output
    :reader output
    :initarg :output
    :type cl:fixnum
    :initform 0)
   (toggle_time
    :reader toggle_time
    :initarg :toggle_time
    :type cl:real
    :initform 0))
)

(cl:defclass DigitalOutput (<DigitalOutput>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalOutput>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalOutput)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ypspur_ros-msg:<DigitalOutput> is deprecated: use ypspur_ros-msg:DigitalOutput instead.")))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <DigitalOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ypspur_ros-msg:output-val is deprecated.  Use ypspur_ros-msg:output instead.")
  (output m))

(cl:ensure-generic-function 'toggle_time-val :lambda-list '(m))
(cl:defmethod toggle_time-val ((m <DigitalOutput>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ypspur_ros-msg:toggle_time-val is deprecated.  Use ypspur_ros-msg:toggle_time instead.")
  (toggle_time m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DigitalOutput>)))
    "Constants for message type '<DigitalOutput>"
  '((:HIGH_IMPEDANCE . 0)
    (:LOW . 1)
    (:HIGH . 2)
    (:PULL_UP . 3)
    (:PULL_DOWN . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DigitalOutput)))
    "Constants for message type 'DigitalOutput"
  '((:HIGH_IMPEDANCE . 0)
    (:LOW . 1)
    (:HIGH . 2)
    (:PULL_UP . 3)
    (:PULL_DOWN . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalOutput>) ostream)
  "Serializes a message object of type '<DigitalOutput>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'toggle_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'toggle_time) (cl:floor (cl:slot-value msg 'toggle_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalOutput>) istream)
  "Deserializes a message object of type '<DigitalOutput>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'output)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'toggle_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalOutput>)))
  "Returns string type for a message object of type '<DigitalOutput>"
  "ypspur_ros/DigitalOutput")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalOutput)))
  "Returns string type for a message object of type 'DigitalOutput"
  "ypspur_ros/DigitalOutput")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalOutput>)))
  "Returns md5sum for a message object of type '<DigitalOutput>"
  "019a9291acebccdd82910cc6e11634c7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalOutput)))
  "Returns md5sum for a message object of type 'DigitalOutput"
  "019a9291acebccdd82910cc6e11634c7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalOutput>)))
  "Returns full string definition for message of type '<DigitalOutput>"
  (cl:format cl:nil "uint8 output~%duration toggle_time~%~%uint8 HIGH_IMPEDANCE=0~%uint8 LOW=1~%uint8 HIGH=2~%uint8 PULL_UP=3~%uint8 PULL_DOWN=4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalOutput)))
  "Returns full string definition for message of type 'DigitalOutput"
  (cl:format cl:nil "uint8 output~%duration toggle_time~%~%uint8 HIGH_IMPEDANCE=0~%uint8 LOW=1~%uint8 HIGH=2~%uint8 PULL_UP=3~%uint8 PULL_DOWN=4~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalOutput>))
  (cl:+ 0
     1
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalOutput>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalOutput
    (cl:cons ':output (output msg))
    (cl:cons ':toggle_time (toggle_time msg))
))
