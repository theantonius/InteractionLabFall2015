int a = 29;
int b = -233;
int c = a + b;
void setup() {
  size(1500, 1000);
}
int value = 0;
void mouseMoved() {
  value = value + 5;
  if (value > 255) {
    value = 50;
  }
}
void draw() {
  background(60, 60, 100);

  pushMatrix();
  // she's trying to move the axis of rotation
  translate(500, 300);

  rotate(radians (+frameCount));
  ellipse(100, 200, 180, 180);
  fill(0);
  stroke(255);
  strokeWeight(2);
  fill(value);
  rect(-160, -160, 90, 90);

  popMatrix();
}