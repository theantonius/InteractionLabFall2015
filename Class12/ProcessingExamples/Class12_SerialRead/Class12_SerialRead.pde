// import the processing serial library
import processing.serial.*;
// create an port
Serial myPort;

void setup() {
  myPort = new Serial(this, Serial.list()[1], 9600);
  // Serial.list()[1] will change depending on your computer
  // if you see in the Arduino IDE under tools > port
  // the serial port is the first, then it will be
  // Serial.list()[0]
  // if it is the second, then it will be
  // Serial.list()[1]
}
void draw() {
  
  // as long as my port is sending data, do something
  while (myPort.available() > 0) {
    int inByte = myPort.read();
    // this prints the byte coming in
    println(inByte);
    // this changes the background color based on the byte
    background(inByte);
  }
}