int rotationSpeed;
int x;
int y;
// this changes speed as well
int xPlus=6;
int yPlus=5;
void setup() {
  size(400, 400);
  rotationSpeed =0;
  // randomize location of x and y
  x = int(random(width-50));
  y = int(random(height-50));
}

void draw() {
  background(255);

  for (int locY = 50; locY < height; locY+=100) {
    for (int locX = 50; locX < width; locX+=100) {
      shield(locX, locY);
    }
  }

  rotationSpeed = rotationSpeed + 7;
}

void shield(int shieldX, int shieldY) {
  // push the matrix to get the shield moving right
  pushMatrix();
  // change 56 46 to 0 0
  translate(shieldX, shieldY);
  // rotate!
  rotate(radians(rotationSpeed));

  fill(#FF0026);
  ellipse(0, 0, 100, 100);
  fill(255);
  ellipse(0, 0, 80, 80);
  fill(#FF0026);
  ellipse(0, 0, 60, 60);
  fill(#45B9F5);
  ellipse(0, 0, 40, 40);
  //draw a white star
  // change the scale of the star with a multiplier
  float mult = radians(20);
  fill(255);
  beginShape();
  vertex(0*mult, -50*mult);
  vertex(14*mult, -20*mult);
  vertex(47*mult, -15*mult);
  vertex(23*mult, 7*mult);
  vertex(29*mult, 40*mult);
  vertex(0*mult, 25*mult);
  vertex(-29*mult, 40*mult);
  vertex(-23*mult, 7*mult);
  vertex(-47*mult, -15*mult);
  vertex(-14*mult, -20*mult);
  vertex(0*mult, -50*mult);
  endShape();
  // pop the shield matrix back
  popMatrix();
  //// math to change the position
  //if (x>350 || x <50)
  //xPlus = xPlus*-1;
  //if (y>350 || y <50)
  //yPlus = yPlus*-1;
  //x += xPlus;
  //y += yPlus;
}