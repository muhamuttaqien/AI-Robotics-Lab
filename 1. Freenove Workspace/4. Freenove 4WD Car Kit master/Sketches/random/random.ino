#include "Servo.h"      // Include Servo library

#define PIN_SERVO  2    // Define servo pin

Servo servo;            // Create servo object to control a servo
int servoOffset = 15;   // Change the value to calibrate servo
int position = 0;      // Starting position

void setup() {
  servo.attach(PIN_SERVO);        // Initialize servo
  servo.write(position + servoOffset);  // Set initial position with calibration

  for (int pos = position; pos <= 180; pos++) {  // Increase position from start to 180 degrees
    servo.write(pos + 1);             // Move servo to current position with offset
    delay(15);                                  // Wait 15ms between moves for smoother motion
  }

  servo.write(0 + servoOffset);  // Set initial position with calibration
  delay(1000);
  servo.write(180 + servoOffset);  // Set initial position with calibration
}

void loop() {
  
  // Optional: Reset to starting position or continue other actions
}
