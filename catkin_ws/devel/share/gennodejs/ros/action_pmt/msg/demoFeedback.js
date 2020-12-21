// Auto-generated. Do not edit!

// (in-package action_pmt.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class demoFeedback {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.current_count = null;
    }
    else {
      if (initObj.hasOwnProperty('current_count')) {
        this.current_count = initObj.current_count
      }
      else {
        this.current_count = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type demoFeedback
    // Serialize message field [current_count]
    bufferOffset = _serializer.int32(obj.current_count, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type demoFeedback
    let len;
    let data = new demoFeedback(null);
    // Deserialize message field [current_count]
    data.current_count = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'action_pmt/demoFeedback';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f77169e65b5b24a984cd3f9acb1e49b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #feedback
    int32 current_count
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new demoFeedback(null);
    if (msg.current_count !== undefined) {
      resolved.current_count = msg.current_count;
    }
    else {
      resolved.current_count = 0
    }

    return resolved;
    }
};

module.exports = demoFeedback;
