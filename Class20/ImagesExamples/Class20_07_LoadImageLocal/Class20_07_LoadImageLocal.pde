PImage photo;

void setup() {
  size(100, 100);
  photo = loadImage("duckitten.jpg");
}

void draw() {
  
  // draws the image as is
  // image(photo, 0, 0);
  
  // draws the image and changes the
  // width and height to the display
  // width and height
  image(photo, 0, 0, width, height);
}