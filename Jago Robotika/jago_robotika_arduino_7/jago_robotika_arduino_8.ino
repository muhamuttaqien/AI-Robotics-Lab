int TRIG = 7;
int ECHO = 8;
int RED = 2;
int YELLOW = 3;
int GREEN = 4;
int BUZZER = 9;

void setup() {
  // put your setup code here, to run once:
  pinMode(TRIG, OUTPUT);
  pinMode(ECHO, INPUT);

  pinMode(RED, OUTPUT);
  pinMode(YELLOW, OUTPUT);
  pinMode(GREEN, OUTPUT);

  pinMode(BUZZER, OUTPUT);

  Serial.begin(9600);
}

void loop() {
  // put your main code here, to run repeatedly:
  digitalWrite(TRIG, HIGH);
  delayMicroseconds(10);
  digitalWrite(TRIG, LOW);

  int duration;
  duration = pulseIn(ECHO, HIGH); // microseconds

  int distance;
  distance = duration/2*0.0340; // V: 340m/s
  
  if (distance > 60)
  {
    digitalWrite(RED, LOW);
    digitalWrite(YELLOW, LOW);
    digitalWrite(GREEN, LOW);
    digitalWrite(BUZZER, LOW);
  }
  else if (distance <= 60 && distance > 30)
  {
    digitalWrite(RED, LOW);
    digitalWrite(YELLOW, LOW);
    digitalWrite(GREEN, HIGH);
    digitalWrite(BUZZER, LOW);
  }
  else if (distance <= 30 && distance > 15)
  {
    digitalWrite(RED, LOW);
    digitalWrite(YELLOW, HIGH);
    digitalWrite(GREEN, LOW);
    digitalWrite(BUZZER, LOW);
  }
  else if (distance <= 15)
  {
    digitalWrite(RED, HIGH);
    digitalWrite(YELLOW, LOW);
    digitalWrite(GREEN, LOW);
    digitalWrite(BUZZER, HIGH);
  }

  Serial.println(distance);
}
