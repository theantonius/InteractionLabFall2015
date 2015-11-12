// this sketch makes static
// with the set function
// medium-speed method

void setup() {
  size(1000, 1000);
}

void draw() {
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int r = int(random(0, 255));
      color c = color(r);
      set(x,y,c);
    }
  }
  println(frameRate);
}