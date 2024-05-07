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

class DigitalOutput {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.output = null;
      this.toggle_time = null;
    }
    else {
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = 0;
      }
      if (initObj.hasOwnProperty('toggle_time')) {
        this.toggle_time = initObj.toggle_time
      }
      else {
        this.toggle_time = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DigitalOutput
    // Serialize message field [output]
    bufferOffset = _serializer.uint8(obj.output, buffer, bufferOffset);
    // Serialize message field [toggle_time]
    bufferOffset = _serializer.duration(obj.toggle_time, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DigitalOutput
    let len;
    let data = new DigitalOutput(null);
    // Deserialize message field [output]
    data.output = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [toggle_time]
    data.toggle_time = _deserializer.duration(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ypspur_ros/DigitalOutput';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '019a9291acebccdd82910cc6e11634c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 output
    duration toggle_time
    
    uint8 HIGH_IMPEDANCE=0
    uint8 LOW=1
    uint8 HIGH=2
    uint8 PULL_UP=3
    uint8 PULL_DOWN=4
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DigitalOutput(null);
    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = 0
    }

    if (msg.toggle_time !== undefined) {
      resolved.toggle_time = msg.toggle_time;
    }
    else {
      resolved.toggle_time = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

// Constants for message
DigitalOutput.Constants = {
  HIGH_IMPEDANCE: 0,
  LOW: 1,
  HIGH: 2,
  PULL_UP: 3,
  PULL_DOWN: 4,
}

module.exports = DigitalOutput;
