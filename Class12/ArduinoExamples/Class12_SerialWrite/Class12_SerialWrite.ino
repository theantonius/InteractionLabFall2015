void setup() {
  Serial.begin(9600);
}
void loop() {  
  int sensorValue = analogRead(A0);
  sensorValue = sensorValue/4; 
  Serial.write(sensorValue);
}
