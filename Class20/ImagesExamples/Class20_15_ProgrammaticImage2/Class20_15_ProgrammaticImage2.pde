PImage img = createImage(100, 100, RGB);
img.loadPixels();
for (int i = 0; i < img.pixels.length; i++) {
  color c = color(255, 255-(i%width), 0);
  img.pixels[i] = c;
}
img.updatePixels();
image(img, 0, 0);