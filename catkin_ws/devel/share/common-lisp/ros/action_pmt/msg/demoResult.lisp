; Auto-generated. Do not edit!


(cl:in-package action_pmt-msg)


;//! \htmlinclude demoResult.msg.html

(cl:defclass <demoResult> (roslisp-msg-protocol:ros-message)
  ((final_count
    :reader final_count
    :initarg :final_count
    :type cl:integer
    :initform 0))
)

(cl:defclass demoResult (<demoResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <demoResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'demoResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name action_pmt-msg:<demoResult> is deprecated: use action_pmt-msg:demoResult instead.")))

(cl:ensure-generic-function 'final_count-val :lambda-list '(m))
(cl:defmethod final_count-val ((m <demoResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader action_pmt-msg:final_count-val is deprecated.  Use action_pmt-msg:final_count instead.")
  (final_count m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <demoResult>) ostream)
  "Serializes a message object of type '<demoResult>"
  (cl:let* ((signed (cl:slot-value msg 'final_count)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <demoResult>) istream)
  "Deserializes a message object of type '<demoResult>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'final_count) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<demoResult>)))
  "Returns string type for a message object of type '<demoResult>"
  "action_pmt/demoResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'demoResult)))
  "Returns string type for a message object of type 'demoResult"
  "action_pmt/demoResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<demoResult>)))
  "Returns md5sum for a message object of type '<demoResult>"
  "eaae876f57686d9f2a92f60bfbd26c85")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'demoResult)))
  "Returns md5sum for a message object of type 'demoResult"
  "eaae876f57686d9f2a92f60bfbd26c85")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<demoResult>)))
  "Returns full string definition for message of type '<demoResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int32 final_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'demoResult)))
  "Returns full string definition for message of type 'demoResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#result~%int32 final_count~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <demoResult>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <demoResult>))
  "Converts a ROS message object to a list"
  (cl:list 'demoResult
    (cl:cons ':final_count (final_count msg))
))
