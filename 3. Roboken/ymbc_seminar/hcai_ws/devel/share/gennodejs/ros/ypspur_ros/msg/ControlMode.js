// Auto-generated. Do not edit!

// (in-package ypspur_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ControlMode {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vehicle_control_mode = null;
    }
    else {
      if (initObj.hasOwnProperty('vehicle_control_mode')) {
        this.vehicle_control_mode = initObj.vehicle_control_mode
      }
      else {
        this.vehicle_control_mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ControlMode
    // Serialize message field [vehicle_control_mode]
    bufferOffset = _serializer.uint8(obj.vehicle_control_mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ControlMode
    let len;
    let data = new ControlMode(null);
    // Deserialize message field [vehicle_control_mode]
    data.vehicle_control_mode = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ypspur_ros/ControlMode';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '93c0f4fc5070bdb87f70b0914a2708f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 vehicle_control_mode
    
    uint8 OPEN = 0
    uint8 TORQUE = 1
    uint8 VELOCITY = 2
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ControlMode(null);
    if (msg.vehicle_control_mode !== undefined) {
      resolved.vehicle_control_mode = msg.vehicle_control_mode;
    }
    else {
      resolved.vehicle_control_mode = 0
    }

    return resolved;
    }
};

// Constants for message
ControlMode.Constants = {
  OPEN: 0,
  TORQUE: 1,
  VELOCITY: 2,
}

module.exports = ControlMode;
