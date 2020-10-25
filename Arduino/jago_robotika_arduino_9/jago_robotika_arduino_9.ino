#include<Servo.h>

int TRIG = 7;
int ECHO = 8;

Servo myServo;
int SERVO = 6;
int angle;

int get_distance()
{
  digitalWrite(TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG, LOW);

  int duration;
  duration = pulseIn(ECHO, HIGH);

  int distance;
  distance = (duration/2) * 340*100 / 10e6;

  return distance;
}

void setup() {
  // put your setup code here, to run once:
  pinMode(TRIG, OUTPUT);
  pinMode(ECHO, INPUT);
  myServo.attach(SERVO);
  Serial.begin(9600);
  digitalWrite(TRIG, LOW);
  myServo.write(90);
}

void loop() {
  // put your main code here, to run repeatedly:
  if (get_distance() < 15 && get_distance() > 10)
  {
    Serial.println("STOP!");
  }
  else if (get_distance() >= 15)
  {
    angle = angle + 1; 
  }
  else
  {
    angle = angle - 1;
  }

  if (angle > 180)
  {
    angle = 180;
  }
  if (angle <= 0)
  {
    angle = 0;
  }
  
  myServo.write(angle);
  Serial.println(get_distance());
  delay(100);
  
}
