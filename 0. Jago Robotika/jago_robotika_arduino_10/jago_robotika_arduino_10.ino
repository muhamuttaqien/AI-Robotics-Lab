#include <IRremote.h>
#include <Servo.h>

#define PREV 16720605
#define NEXT 16712445
#define PLAY 16761405

int receiver_IR = 10;
IRrecv remote(receiver_IR);
decode_results data_remote;

Servo servo;
int angle = 90;

void setup() {
  // put your setup code here, to run once:
  remote.enableIRIn();
  Serial.begin(9600);
  // servo.attach(6);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  if (remote.decode(&data_remote)==1)
  {
    Serial.println(data_remote.value);
    remote.resume();

    if (data_remote.value == NEXT) angle = angle + 10;
    else if (data_remote.value == PREV) angle = angle - 10;
  }
  servo.write(angle);
}
