
(cl:in-package :asdf)

(defsystem "cirkit_waypoint_manager_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "WaypointArray" :depends-on ("_package_WaypointArray"))
    (:file "_package_WaypointArray" :depends-on ("_package"))
  ))