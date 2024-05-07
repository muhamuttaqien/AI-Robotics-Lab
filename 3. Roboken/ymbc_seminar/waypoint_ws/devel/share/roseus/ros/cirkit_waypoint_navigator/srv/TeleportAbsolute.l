;; Auto-generated. Do not edit!


(when (boundp 'cirkit_waypoint_navigator::TeleportAbsolute)
  (if (not (find-package "CIRKIT_WAYPOINT_NAVIGATOR"))
    (make-package "CIRKIT_WAYPOINT_NAVIGATOR"))
  (shadow 'TeleportAbsolute (find-package "CIRKIT_WAYPOINT_NAVIGATOR")))
(unless (find-package "CIRKIT_WAYPOINT_NAVIGATOR::TELEPORTABSOLUTE")
  (make-package "CIRKIT_WAYPOINT_NAVIGATOR::TELEPORTABSOLUTE"))
(unless (find-package "CIRKIT_WAYPOINT_NAVIGATOR::TELEPORTABSOLUTEREQUEST")
  (make-package "CIRKIT_WAYPOINT_NAVIGATOR::TELEPORTABSOLUTEREQUEST"))
(unless (find-package "CIRKIT_WAYPOINT_NAVIGATOR::TELEPORTABSOLUTERESPONSE")
  (make-package "CIRKIT_WAYPOINT_NAVIGATOR::TELEPORTABSOLUTERESPONSE"))

(in-package "ROS")





(defclass cirkit_waypoint_navigator::TeleportAbsoluteRequest
  :super ros::object
  :slots (_x _y _theta ))

(defmethod cirkit_waypoint_navigator::TeleportAbsoluteRequest
  (:init
   (&key
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:theta __theta) 0.0)
    )
   (send-super :init)
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _theta (float __theta))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:theta
   (&optional __theta)
   (if __theta (setq _theta __theta)) _theta)
  (:serialization-length
   ()
   (+
    ;; float32 _x
    4
    ;; float32 _y
    4
    ;; float32 _theta
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _x
       (sys::poke _x (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _y
       (sys::poke _y (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _theta
       (sys::poke _theta (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _x
     (setq _x (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _y
     (setq _y (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _theta
     (setq _theta (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass cirkit_waypoint_navigator::TeleportAbsoluteResponse
  :super ros::object
  :slots ())

(defmethod cirkit_waypoint_navigator::TeleportAbsoluteResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass cirkit_waypoint_navigator::TeleportAbsolute
  :super ros::object
  :slots ())

(setf (get cirkit_waypoint_navigator::TeleportAbsolute :md5sum-) "a130bc60ee6513855dc62ea83fcc5b20")
(setf (get cirkit_waypoint_navigator::TeleportAbsolute :datatype-) "cirkit_waypoint_navigator/TeleportAbsolute")
(setf (get cirkit_waypoint_navigator::TeleportAbsolute :request) cirkit_waypoint_navigator::TeleportAbsoluteRequest)
(setf (get cirkit_waypoint_navigator::TeleportAbsolute :response) cirkit_waypoint_navigator::TeleportAbsoluteResponse)

(defmethod cirkit_waypoint_navigator::TeleportAbsoluteRequest
  (:response () (instance cirkit_waypoint_navigator::TeleportAbsoluteResponse :init)))

(setf (get cirkit_waypoint_navigator::TeleportAbsoluteRequest :md5sum-) "a130bc60ee6513855dc62ea83fcc5b20")
(setf (get cirkit_waypoint_navigator::TeleportAbsoluteRequest :datatype-) "cirkit_waypoint_navigator/TeleportAbsoluteRequest")
(setf (get cirkit_waypoint_navigator::TeleportAbsoluteRequest :definition-)
      "float32 x
float32 y
float32 theta
---

")

(setf (get cirkit_waypoint_navigator::TeleportAbsoluteResponse :md5sum-) "a130bc60ee6513855dc62ea83fcc5b20")
(setf (get cirkit_waypoint_navigator::TeleportAbsoluteResponse :datatype-) "cirkit_waypoint_navigator/TeleportAbsoluteResponse")
(setf (get cirkit_waypoint_navigator::TeleportAbsoluteResponse :definition-)
      "float32 x
float32 y
float32 theta
---

")



(provide :cirkit_waypoint_navigator/TeleportAbsolute "a130bc60ee6513855dc62ea83fcc5b20")


