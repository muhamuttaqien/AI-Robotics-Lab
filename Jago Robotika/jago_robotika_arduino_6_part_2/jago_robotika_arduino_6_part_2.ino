
#include <Servo.h>

int pin_servo = 6;
Servo servo1;

int pin_potensio = A0;

void setup() {
  // put your setup code here, to run once:
  servo1.attach(pin_servo);
  Serial.begin(9600);
}

void loop() {
  
  // put your main code here, to run repeatedly:
  int potensio;
  int angle;
  
  potensio = analogRead(pin_potensio);
  angle = map(potensio, 120, 802, 0, 180); // with callibration

  servo1.write(angle);
  Serial.println(potensio);
}
