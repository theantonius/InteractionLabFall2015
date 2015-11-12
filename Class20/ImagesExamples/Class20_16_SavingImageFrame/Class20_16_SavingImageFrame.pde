size(200, 200);
background(0);
PImage img = createImage(100, 100, RGB);
color white = color(255);
for (int x = 0; x < 100; x++) {
  for (int y = 0; y < 100; y++) {
    img.set(x, y, white);
  }
}
image(img,0,0);
img.save("image.jpg");
saveFrame("frame.jpg");