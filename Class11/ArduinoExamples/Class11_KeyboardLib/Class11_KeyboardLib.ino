// Keyboard Library Example
// For Use with Seeeduino Lite
// Doesn't work with Uno

void setup() {
  pinMode(7, INPUT);
  Keyboard.begin();
}
void loop() {
  if (digitalRead(7) == HIGH) {
    Keyboard.press('h');
    delay(100);
    Keyboard.release('h');
    delay(100);
    Keyboard.press('e');
    delay(100);
    Keyboard.release('e');
    delay(100);
    Keyboard.press('l');
    delay(100);
    Keyboard.release('l');
    delay(100);
    Keyboard.press('l');
    delay(100);
    Keyboard.release('l');
    delay(100);
    Keyboard.press('o');
    delay(100);
    Keyboard.release('o');
    delay(100);
  }
}
