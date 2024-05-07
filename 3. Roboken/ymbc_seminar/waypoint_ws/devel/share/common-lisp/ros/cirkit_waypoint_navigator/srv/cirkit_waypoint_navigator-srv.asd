
(cl:in-package :asdf)

(defsystem "cirkit_waypoint_navigator-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "TeleportAbsolute" :depends-on ("_package_TeleportAbsolute"))
    (:file "_package_TeleportAbsolute" :depends-on ("_package"))
  ))