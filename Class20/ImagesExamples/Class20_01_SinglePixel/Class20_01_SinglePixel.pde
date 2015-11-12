// Class 20 - Single Pixel in Three Ways
void setup() {
  size(100, 100);
}

void draw() {
  background(0);

  // this creates one single pixel
  // at 25, 25, with the color value 255
  stroke(255);
  point(25, 25);


  // this creates one single pixel
  // at x = 75, y = 25, with the color value 255  
  loadPixels();
  color c = color(255);
  // we get the location of the pixel
  // with the formula (y * height)+x
  pixels[2575] = c;
  updatePixels();

  // this creates one single pixel
  // at x = 25, y = 75 using set(x,y,color)
  // this method is easier, but not as fast
  // as the above pixels[] method.
  set(25,75,c);
}