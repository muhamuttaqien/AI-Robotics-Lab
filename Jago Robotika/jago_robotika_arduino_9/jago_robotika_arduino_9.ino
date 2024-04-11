#include<Servo.h>

int TRIG = 7;
int ECHO = 8;

Servo myServo;
int SERVO = 6;
int angle;

int JoyXPin = A1;
int JoyYPin = A2;
int JoySWPin = 11;


int get_distance()
{
  digitalWrite(TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG, LOW);

  int duration;
  duration = pulseIn(ECHO, HIGH);

  int distance;
  distance = duration/2*0.0340; // V: 340m/s

  return distance;
}

void setup() {
  // put your setup code here, to run once:
  pinMode(TRIG, OUTPUT);
  pinMode(ECHO, INPUT);
  pinMode(JoySWPin, INPUT_PULLUP);
  
  digitalWrite(TRIG, LOW);
  
  myServo.attach(SERVO);
  myServo.write(90);
  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:

  int JoyX;
  int JoyY;
  int JoySW;
  
  if (get_distance() < 20 && get_distance() > 15)
  {
    Serial.println("STOP!");
  }
  else if (get_distance() >= 20)
  {
    JoyX = analogRead(JoyXPin);
    angle = map(JoyX, 0, 1024, 45, 135);
  }
  else
  {
    angle = angle - 4;
  }

  if (angle > 135)
  {
    angle = 135;
  }
  if (angle <= 45)
  {
    angle = 45;
  }
  
  myServo.write(angle);
  Serial.println(get_distance());
  delay(100);

  // JoyX = analogRead(JoyXPin);
  // JoyY = analogRead(JoyYPin);
  // JoySW = digitalRead(JoySWPin);

  // Serial.print("X: ");
  // Serial.println(JoyX);

  // Serial.print("Y: ");
  // Serial.println(JoyY);

  // Serial.print("SW: ");
  // Serial.println(JoySW);

  // delay(500);
 
}
