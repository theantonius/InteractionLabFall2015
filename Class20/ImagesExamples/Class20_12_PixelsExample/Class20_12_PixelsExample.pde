size(500,500);
PImage photo;
photo = loadImage("monkey.jpg");
for(int x = 0; x < width; x+=10){
for(int y = 0; y < height; y+=10){
  photo.pixels[y*height+x]=color(255);
}
}
image(photo, 0, 0);