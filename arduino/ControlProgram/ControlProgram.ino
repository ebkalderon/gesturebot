#include <Servo.h>

Servo right;
Servo left;

// Transforms a speed value from [-100, 100] to [0, 180].
unsigned convert_speed(int speed) {
  speed = constrain(speed, -100, 100);
  unsigned result;

  if (speed > 0) {
    result = 90 + ((speed * 90) / 100);
  } else if (speed < 0) {
    result = 180 - (((100 - speed) * 90) / 100);
  } else {
    result = 90;
  }

  return result;
}

// Drives the car backward (-100 to -1), forward (1 to 100), or stop (0).
void move(int speed) {
  speed = convert_speed(speed);
  right.write(180 - speed);
  left.write(speed);
}

// Stops and turns car right (0-89).
void turn_right(int speed) {
  right.write(180 - speed);
  left.write(90);
}

// Stops and turns car left (0-89).
void turn_left(int speed) {
  right.write(90);
  left.write(speed);
}

// Spins car in place, turning left (-100 to -1), right (1 to 100), or stop (0).
void spin_in_circle(int speed) {
  speed = convert_speed(speed);
  right.write(speed);
  left.write(speed); 
}

// Initializes the car's subsystems.
void setup() {
  right.attach(2);
  left.attach(3);
}

// Processes commands received from Xbox Kinect.
void loop() {
    // Monitor USB cable for data, parse string and call correct functions above.
}
