// the values of key corellate to
// the ASCII code
// http://www.theasciicode.com.ar/ascii-printable-characters/space-ascii-code-32.html

void setup() {
}

void draw() {
  background(0);
}

void keyPressed() {
  println("pressed " + int(key) + " " + keyCode);
}

void keyTyped() {
  println("typed " + int(key) + " " + keyCode);
}

void keyReleased() {
  println("released " + int(key) + " " + keyCode);
}