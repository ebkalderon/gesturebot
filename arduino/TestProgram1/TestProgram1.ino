#include <Servo.h>

Servo right;
Servo left;

void Move_Forward(int speed)
{
  //0
  //from 0-90
  //moves forward 
  right.write(180-speed);
  left.write(speed); 
}

void Move_Backward(int speed)
{
  //180
  //moves backward 
  right.write(180-speed);
  left.write(speed);
}

void Move_Right(int speed)
{
  //0
  //moves right
  right.write(180-speed);
  left.write(90);
}

void Move_Left(int speed)
{
  //0
  //moves left 
  right.write(90);
  left.write(speed);
}

void Move_In_circle(int speed)
{
  //180
  //moves in circle 
  right.write(speed);
  left.write(speed); 
}

void setup() {
  // put your setup code here, to run once:
  right.attach(2);
  left.attach(3);
  
  Move_In_circle(180);
}

void loop() {
  // put your main code here, to run repeatedly:
  //right.write(120);
}

