int y = 120;
int x = 30;
int xSpeed = 0;
void setup() {
  size(320, 240);
}

void draw() {
//  background(0);
  rect(x, y, 30, 30);
  
    if (keyCode==UP) {
      y--;
    } else if(keyCode==DOWN){
      y++;
    } else if(keyCode==LEFT){
      x-=xSpeed;
    } else if(keyCode==RIGHT){
      x+=xSpeed;
    }
  println(x);
}