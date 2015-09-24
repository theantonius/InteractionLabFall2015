int y = 30;
void setup() {
}

void draw() {
  rect(30,y,30,30);
  
  if (key == CODED) {
    if (keyCode == UP) {
      y--;
    } else if (keyCode == DOWN) {
      y++;
    }
  }
}