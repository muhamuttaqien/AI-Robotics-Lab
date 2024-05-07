;; Auto-generated. Do not edit!


(when (boundp 'ypspur_ros::ControlMode)
  (if (not (find-package "YPSPUR_ROS"))
    (make-package "YPSPUR_ROS"))
  (shadow 'ControlMode (find-package "YPSPUR_ROS")))
(unless (find-package "YPSPUR_ROS::CONTROLMODE")
  (make-package "YPSPUR_ROS::CONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude ControlMode.msg.html


(intern "*OPEN*" (find-package "YPSPUR_ROS::CONTROLMODE"))
(shadow '*OPEN* (find-package "YPSPUR_ROS::CONTROLMODE"))
(defconstant ypspur_ros::ControlMode::*OPEN* 0)
(intern "*TORQUE*" (find-package "YPSPUR_ROS::CONTROLMODE"))
(shadow '*TORQUE* (find-package "YPSPUR_ROS::CONTROLMODE"))
(defconstant ypspur_ros::ControlMode::*TORQUE* 1)
(intern "*VELOCITY*" (find-package "YPSPUR_ROS::CONTROLMODE"))
(shadow '*VELOCITY* (find-package "YPSPUR_ROS::CONTROLMODE"))
(defconstant ypspur_ros::ControlMode::*VELOCITY* 2)

(defun ypspur_ros::ControlMode-to-symbol (const)
  (cond
        ((= const 0) 'ypspur_ros::ControlMode::*OPEN*)
        ((= const 1) 'ypspur_ros::ControlMode::*TORQUE*)
        ((= const 2) 'ypspur_ros::ControlMode::*VELOCITY*)
        (t nil)))

(defclass ypspur_ros::ControlMode
  :super ros::object
  :slots (_vehicle_control_mode ))

(defmethod ypspur_ros::ControlMode
  (:init
   (&key
    ((:vehicle_control_mode __vehicle_control_mode) 0)
    )
   (send-super :init)
   (setq _vehicle_control_mode (round __vehicle_control_mode))
   self)
  (:vehicle_control_mode
   (&optional __vehicle_control_mode)
   (if __vehicle_control_mode (setq _vehicle_control_mode __vehicle_control_mode)) _vehicle_control_mode)
  (:serialization-length
   ()
   (+
    ;; uint8 _vehicle_control_mode
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _vehicle_control_mode
       (write-byte _vehicle_control_mode s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _vehicle_control_mode
     (setq _vehicle_control_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ypspur_ros::ControlMode :md5sum-) "93c0f4fc5070bdb87f70b0914a2708f4")
(setf (get ypspur_ros::ControlMode :datatype-) "ypspur_ros/ControlMode")
(setf (get ypspur_ros::ControlMode :definition-)
      "uint8 vehicle_control_mode

uint8 OPEN = 0
uint8 TORQUE = 1
uint8 VELOCITY = 2


")



(provide :ypspur_ros/ControlMode "93c0f4fc5070bdb87f70b0914a2708f4")


