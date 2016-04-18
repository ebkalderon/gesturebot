#include "Vehicle.hpp"

Vehicle *car;

// Initializes the car's subsystems.
void setup() {
  car = new Vehicle(2, 3);
  car->move(100);
}

// Processes commands received from Xbox Kinect.
void loop() {
    // Monitor USB cable for data, parse string and call correct functions above.
}
