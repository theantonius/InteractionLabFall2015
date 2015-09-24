void setup() {
  size(800,600);
}

void draw() {
  // if the mouse is pressed
  if (mousePressed) {
    ellipse(mouseX,mouseY,20,20);
    // do something.
    //int r = int(random(0, 255));
    //int g = int(random(0, 255));
    //int b = int(random(0, 255));
    //background(r, g, b);
  }
}

void mousePressed() {
}