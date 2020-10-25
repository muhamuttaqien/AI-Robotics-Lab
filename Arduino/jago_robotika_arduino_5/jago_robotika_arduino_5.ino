void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int button;
  int potentio;
  int wait;

  button = digitalRead(5);
  potentio = analogRead(A0);

  if (button == LOW)
  {
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
    digitalWrite(4, HIGH);
  }
  else {
    digitalWrite(2, LOW);
    digitalWrite(3, HIGH);
    digitalWrite(4, LOW);
    delay(1000);

    digitalWrite(2, HIGH);
    digitalWrite(3, LOW);
    wait = 1000+4000/1023*potentio
    delay(wait);

    digitalWrite(3, HIGH);
    digitalWrite(2, LOW);
    delay(1000);
  }
}
