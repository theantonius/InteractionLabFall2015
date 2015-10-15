import processing.serial.*;
Serial myPort;
void setup() {
  myPort = new Serial(this, Serial.list()[1], 9600);
}
void draw() {
  while (myPort.available() > 0) {
    int inByte = myPort.read();
    println(inByte);
    background(inByte);
  }
}