
(cl:in-package :asdf)

(defsystem "ypspur_ros-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ControlMode" :depends-on ("_package_ControlMode"))
    (:file "_package_ControlMode" :depends-on ("_package"))
    (:file "DigitalInput" :depends-on ("_package_DigitalInput"))
    (:file "_package_DigitalInput" :depends-on ("_package"))
    (:file "DigitalOutput" :depends-on ("_package_DigitalOutput"))
    (:file "_package_DigitalOutput" :depends-on ("_package"))
    (:file "JointPositionControl" :depends-on ("_package_JointPositionControl"))
    (:file "_package_JointPositionControl" :depends-on ("_package"))
  ))