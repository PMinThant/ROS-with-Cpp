;; Auto-generated. Do not edit!


(when (boundp 'action_pmt::demoGoal)
  (if (not (find-package "ACTION_PMT"))
    (make-package "ACTION_PMT"))
  (shadow 'demoGoal (find-package "ACTION_PMT")))
(unless (find-package "ACTION_PMT::DEMOGOAL")
  (make-package "ACTION_PMT::DEMOGOAL"))

(in-package "ROS")
;;//! \htmlinclude demoGoal.msg.html


(defclass action_pmt::demoGoal
  :super ros::object
  :slots (_count ))

(defmethod action_pmt::demoGoal
  (:init
   (&key
    ((:count __count) 0)
    )
   (send-super :init)
   (setq _count (round __count))
   self)
  (:count
   (&optional __count)
   (if __count (setq _count __count)) _count)
  (:serialization-length
   ()
   (+
    ;; int32 _count
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _count
       (write-long _count s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _count
     (setq _count (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get action_pmt::demoGoal :md5sum-) "602d642babe509c7c59f497c23e716a9")
(setf (get action_pmt::demoGoal :datatype-) "action_pmt/demoGoal")
(setf (get action_pmt::demoGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#goal
int32 count

")



(provide :action_pmt/demoGoal "602d642babe509c7c59f497c23e716a9")

