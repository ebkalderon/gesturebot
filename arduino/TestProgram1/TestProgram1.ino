#include <Servo.h>

Servo right;
Servo left;

// Moves the car forward (0-89), backward (91-180), or stop (90).
void Move(int speed) {
  right.write(180 - speed);
  left.write(speed); 
}

void Turn_Right(int speed) {
  //0
  //moves right
  right.write(180 - speed);
  left.write(90);
}

void Turn_Left(int speed) {
  //0
  //moves left 
  right.write(90);
  left.write(speed);
}

void Move_In_Circle(int speed) {
  //180
  //moves in circle 
  right.write(speed);
  left.write(speed); 
}

void setup() {
  // put your setup code here, to run once:
  right.attach(2);
  left.attach(3);
  
  Move(0);
}

void loop() {
  // put your main code here, to run repeatedly:
  //right.write(120);
}
