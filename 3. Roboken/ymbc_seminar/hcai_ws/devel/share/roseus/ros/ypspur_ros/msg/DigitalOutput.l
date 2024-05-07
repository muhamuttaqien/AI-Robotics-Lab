;; Auto-generated. Do not edit!


(when (boundp 'ypspur_ros::DigitalOutput)
  (if (not (find-package "YPSPUR_ROS"))
    (make-package "YPSPUR_ROS"))
  (shadow 'DigitalOutput (find-package "YPSPUR_ROS")))
(unless (find-package "YPSPUR_ROS::DIGITALOUTPUT")
  (make-package "YPSPUR_ROS::DIGITALOUTPUT"))

(in-package "ROS")
;;//! \htmlinclude DigitalOutput.msg.html


(intern "*HIGH_IMPEDANCE*" (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(shadow '*HIGH_IMPEDANCE* (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(defconstant ypspur_ros::DigitalOutput::*HIGH_IMPEDANCE* 0)
(intern "*LOW*" (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(shadow '*LOW* (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(defconstant ypspur_ros::DigitalOutput::*LOW* 1)
(intern "*HIGH*" (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(shadow '*HIGH* (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(defconstant ypspur_ros::DigitalOutput::*HIGH* 2)
(intern "*PULL_UP*" (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(shadow '*PULL_UP* (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(defconstant ypspur_ros::DigitalOutput::*PULL_UP* 3)
(intern "*PULL_DOWN*" (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(shadow '*PULL_DOWN* (find-package "YPSPUR_ROS::DIGITALOUTPUT"))
(defconstant ypspur_ros::DigitalOutput::*PULL_DOWN* 4)

(defun ypspur_ros::DigitalOutput-to-symbol (const)
  (cond
        ((= const 0) 'ypspur_ros::DigitalOutput::*HIGH_IMPEDANCE*)
        ((= const 1) 'ypspur_ros::DigitalOutput::*LOW*)
        ((= const 2) 'ypspur_ros::DigitalOutput::*HIGH*)
        ((= const 3) 'ypspur_ros::DigitalOutput::*PULL_UP*)
        ((= const 4) 'ypspur_ros::DigitalOutput::*PULL_DOWN*)
        (t nil)))

(defclass ypspur_ros::DigitalOutput
  :super ros::object
  :slots (_output _toggle_time ))

(defmethod ypspur_ros::DigitalOutput
  (:init
   (&key
    ((:output __output) 0)
    ((:toggle_time __toggle_time) (instance ros::time :init))
    )
   (send-super :init)
   (setq _output (round __output))
   (setq _toggle_time __toggle_time)
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:toggle_time
   (&optional __toggle_time)
   (if __toggle_time (setq _toggle_time __toggle_time)) _toggle_time)
  (:serialization-length
   ()
   (+
    ;; uint8 _output
    1
    ;; duration _toggle_time
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _output
       (write-byte _output s)
     ;; duration _toggle_time
       (write-long (send _toggle_time :sec) s) (write-long (send _toggle_time :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _output
     (setq _output (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; duration _toggle_time
     (send _toggle_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _toggle_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get ypspur_ros::DigitalOutput :md5sum-) "019a9291acebccdd82910cc6e11634c7")
(setf (get ypspur_ros::DigitalOutput :datatype-) "ypspur_ros/DigitalOutput")
(setf (get ypspur_ros::DigitalOutput :definition-)
      "uint8 output
duration toggle_time

uint8 HIGH_IMPEDANCE=0
uint8 LOW=1
uint8 HIGH=2
uint8 PULL_UP=3
uint8 PULL_DOWN=4

")



(provide :ypspur_ros/DigitalOutput "019a9291acebccdd82910cc6e11634c7")


