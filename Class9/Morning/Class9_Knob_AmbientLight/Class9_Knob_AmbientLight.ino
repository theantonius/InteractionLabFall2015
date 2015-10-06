/* 
 Controlling a servo position using a potentiometer (variable resistor) 
 by Michal Rinott <http://people.interaction-ivrea.it/m.rinott> 

 modified on 8 Nov 2013
 by Scott Fitzgerald
 http://www.arduino.cc/en/Tutorial/Knob

 Modified Oct 6, 2015 during class for Interaction Lab
 to show circuit working with ambient light sensor
*/

#include <Servo.h>

Servo myservo;  // create servo object to control a servo

int potpin = 0;  // analog pin used to connect the potentiometer
int val;    // variable to read the value from the analog pin

void setup()
{
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object
}

void loop() 
{ 
  val = analogRead(potpin);            // reads the value of the potentiometer (value between 0 and 1023) 

  // use the AnalogReadSerial example
  // find out what the lowest and highest values
  // of ambient light sensor are.
  // change the 2nd and 3rd
  // values of the map function to those values
  val = map(val, 0, 50, 0, 180);     // scale it to use it with the servo (value between 0 and 180) 
  myservo.write(val);                  // sets the servo position according to the scaled value 
  delay(15);                           // waits for the servo to get there 
} 

