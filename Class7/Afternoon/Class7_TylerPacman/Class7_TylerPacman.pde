int x=0;
int xPlus=1;
void setup() {
  size(350, 250);
}
void draw() {
  background(0);
  //food
  //if (x<299) {
  //  fill(#FFF417);
  //  ellipse(300, 50, 10, 10);
  //}
  //if (x<199) {
  //  fill(#FFF417);
  //  ellipse(200, 50, 10, 10);
  //}
  //if (x<99) {
  //  fill(#FFF417);
  //  ellipse(100, 50, 10, 10);
  //}
  int foodX = 10;
  while (foodX < width) {
    if (x<foodX) {
      fill(#FFF417);
      ellipse(foodX, 50, 10, 10);
    }
    foodX = foodX+10;
    println(foodX);
  }

  //end food
  // draw pacman
  ellipseMode(RADIUS);
  // face
  fill(#FFF417);
  ellipse(x, 50, 30, 30);
  if (frameCount%50>25) {
    fill(0);
    // mouth – if xPlus>0 go 1 direction, if <0 go the other
    if (xPlus >0) {
      arc(x, 50, 30, 30, radians(310), radians(400));
    }
    if (xPlus <0) {
      arc(x, 50, 30, 30, radians(130), radians(220));
    }
    //end pacman
  }
  x+=xPlus;
  if (x>width||x<0) {
    xPlus=xPlus*-1;
  }
}