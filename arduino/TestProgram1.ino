#include <Servo.h>

Servo right;
Servo left;

void setup() {
  // put your setup code here, to run once:
  right.attach(2);
  left.attach(3);
  right.write(180);
  left.write(0);
}

void loop() {
  // put your main code here, to run repeatedly:
  //right.write(120);
}
