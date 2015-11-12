// this sketch makes static
// with the points function
// slowest method

void setup() {
  size(1000, 1000);
}

void draw() {
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int r = int(random(0, 255));
      stroke(r);
      point(x,y);
    }
  }
  println(frameRate);
}