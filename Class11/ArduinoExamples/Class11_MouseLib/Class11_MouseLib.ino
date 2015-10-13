// Mouse Library Example
// For use with Seeeduino Lite
// This won't work with Uno

void setup(){
  pinMode(7,INPUT);
  Mouse.begin();
}
void loop(){
  if(digitalRead(7) == HIGH){
    Mouse.click();
    delay(100);
  } 
}
