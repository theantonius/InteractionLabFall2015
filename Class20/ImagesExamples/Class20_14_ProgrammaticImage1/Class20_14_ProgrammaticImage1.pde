PImage img = createImage(100, 100, RGB);
img.loadPixels();
for (int i = 0; i < img.pixels.length; i++) {
  int rr = floor(random(0, 256));
  int rg = floor(random(0, 256));
  int rb = floor(random(0, 256));
  img.pixels[i] = color(rr, rg, rb); 
}
img.updatePixels();
image(img, 0, 0);