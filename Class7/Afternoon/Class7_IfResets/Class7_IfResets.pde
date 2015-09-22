
// initial value for x and its speed
int x = 0;
int xSpeed = 1;
void setup() {
  size(320,240);
}

void draw() {
//  background(255);
  rect(x, 30, 30, 30);

  // make x go forward
  x+=xSpeed;
 
  // make x reset
  if(x>width){
    // reset x to 0
    x = 0;
  }
}