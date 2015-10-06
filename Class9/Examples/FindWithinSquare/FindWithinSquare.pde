// Check if the mouse is within the square

int recX, recY, recW;

void setup() {
  size(320, 240);
  recX = width/3;
  recY = height/3;
  recW = (width/4);
}

void draw() {
  background(0);

  // Check if mouseX is within
  // X boundaries of rectangle
  // And mouseY is within
  // Y boundaries of rectangle
  if (mouseX > recX && mouseX < recX+recW && mouseY > recY && mouseY < recY+recW) {
    fill(255, 0, 0);
  }
  // else paint it white
  else {
    fill(255);
  }

  rect(recX, recY, recW, recW);
}