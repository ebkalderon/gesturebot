#include <Servo.h>

Servo right;
Servo left;

void Move_Forward()
{
  //moves forward 
  right.write(180);
  left.write(0); 
}

void Move_Backward()
{
  //moves backward 
  right.write(0);
  left.write(180);
}

void Move_Right()
{
  //moves right
  right.write(180);
  left.write(90);
}

void Move_Left()
{
  //moves left 
  right.write(90);
  left.write(0);
}

void Move_In_circle()
{
  //moves in circle 
  right.write(180);
  left.write(180); 
}

void setup() {
  // put your setup code here, to run once:
  right.attach(2);
  left.attach(3);

  Move_In_circle();
}

void loop() {
  // put your main code here, to run repeatedly:
  //right.write(120);
}

