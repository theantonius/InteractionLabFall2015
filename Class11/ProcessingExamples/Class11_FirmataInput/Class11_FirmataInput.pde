// Receives Digital Data from Arduino
// Into Processing

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup() {
  size(470, 280);
  arduino = new Arduino(this, Arduino.list()[3], 57600);
  println(Arduino.list()[3]);
  arduino.pinMode(7, Arduino.INPUT);
}
void draw() {
  background(0);
  if (arduino.digitalRead(7) == Arduino.HIGH){
      rect(10, 10, 200, 200);
  }
}