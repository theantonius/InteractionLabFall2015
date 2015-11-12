// Manipulating multiple pixels in three ways

void setup() {
  size(100, 100);
}

void draw() {

  // draw 1/4th of the display red
  // with points
  for (int x = 0; x < (width/2); x++) {
    for (int y = 0; y < (height/2); y++) {
      stroke(255, 0, 0);
      point(x, y);
    }
  }
  
    // draw 1/4th of the display red
  // with set
  for (int x = (width/2); x < width; x++) {
    for (int y = 0; y < (height/2); y++) {
      color green = color(0,255,0);
      set(x, y, green);
    }
  }

  // draw half of the display blue
  // with pixel manipulation
  for (int x = 0; x < (width); x++) {
    for (int y = (height/2); y < height; y++) {
      loadPixels();
      color blue = color(0,0,255);
      pixels[(y*height)+x] = blue;
      updatePixels();
    }
  }
}