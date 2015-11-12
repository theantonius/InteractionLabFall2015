// this sketch makes static
// with the pixels array
// fastest method

void setup() {
  size(1000, 1000);
}

void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int r = int(random(0, 255));
      color c = color(r);
      pixels[(height*y)+x] = c;
    }
  }
  updatePixels();
  println(frameRate);
}