// this sketch loads an image file
// and tells the user what color
// the mouse hovers over.

PImage img1;
color mouseColor;
float mouseR, mouseG, mouseB;

void setup() {
  size(500,500);
  img1 = loadImage("monkey.jpg");
}

void draw() {
  image(img1, 0, 0, width, height);
  
  mouseColor = img1.get(mouseX, mouseY);

  mouseR = red(mouseColor);
  mouseG = green(mouseColor);
  mouseB = blue(mouseColor);


  println(mouseR+" "+mouseG+" "+mouseB);
  for (int x = width-100; x < width; x++) {
    for (int y = height-100; y < height; y++) {
      img1.set(x, y, mouseColor);
    }
  }
}