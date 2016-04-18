#include "Arduino.h"
#include "Vehicle.hpp"

// Creates a new vehicle instance.
Vehicle::Vehicle(int right_pin, int left_pin)
{
  right.attach(right_pin);
  left.attach(left_pin);
}

// Drives the car backward (-100 to -1), forward (1 to 100), or stop (0).
void Vehicle::move(int speed)
{
  speed = convert_speed(speed);
  right.write(180 - speed);
  left.write(speed);
}

// Stops and turns car right (0 to 100).
void Vehicle::turn_right(unsigned speed)
{
  speed = convert_speed(speed);
  right.write(speed);
  left.write(90);
}

// Stops and turns car left (0 to 100).
void Vehicle::turn_left(unsigned speed)
{
  speed = convert_speed(speed);
  right.write(90);
  left.write(180 - speed);
}

// Spins car in place, turning left (-100 to -1), right (1 to 100), or stop (0).
void Vehicle::spin_in_circle(int speed)
{
  speed = convert_speed(speed);
  right.write(speed);
  left.write(speed); 
}

// Transforms a speed value from [-100, 100] to [0, 180].
unsigned Vehicle::convert_speed(int speed)
{
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
