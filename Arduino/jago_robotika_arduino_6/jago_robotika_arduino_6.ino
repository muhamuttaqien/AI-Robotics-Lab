#include <Servo.h>

int pin_servo = 6;
Servo servo1;

void setup() {
  // put your setup code here, to run once:
  servo1.attach(pin_servo);
}

void loop() {
  // put your main code here, to run repeatedly:
  servo1.write(0);
  delay(2000);

  servo1.write(180);
  delay(2000);
}
