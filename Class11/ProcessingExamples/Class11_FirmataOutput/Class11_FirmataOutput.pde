// Sends Digital Data out of Processing
// Into Arduino

import processing.serial.*;
import cc.arduino.*;
Arduino arduino;

void setup() {
  size(470, 280);
  arduino = new Arduino(this, Arduino.list()[3], 57600);
  println(Arduino.list()[3]);
  arduino.pinMode(3, Arduino.OUTPUT);
}
void draw() {
  background(0);
  if(mousePressed){
    arduino.digitalWrite(3,Arduino.HIGH);
  } else {
    arduino.digitalWrite(3,Arduino.LOW);
  }
}