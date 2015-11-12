// this sketch makes a random color
// with the pixels array
// and tells the user what color
// the mouse hovers over.

color mouseColor;
float mouseR, mouseG, mouseB;

void setup() {
  size(500, 500);

  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int rR = floor(random(0, 255));
      int rG = floor(random(0, 255));
      int rB = floor(random(0, 255));
      color c = color(rR, rG, rB);
      pixels[(height*y)+x] = c;
    }
  }
  updatePixels();
}

void draw() {
  mouseColor = get(mouseX, mouseY);
  mouseR = red(mouseColor);
  mouseG = green(mouseColor);
  mouseB = blue(mouseColor);
  println(mouseR+" "+mouseG+" "+mouseB);
  for (int x = width-100; x < width; x++) {
    for (int y = height-100; y < height; y++) {
      set(x, y, mouseColor);
    }
  }
}