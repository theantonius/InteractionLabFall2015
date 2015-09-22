
// initial value for x and its speed
int x = 0;
int xSpeed = 10;

int y = 0;
int ySpeed = 1;

void setup() {
  size(320,240);
}

void draw() {
//  background(255);
  rect(x, y, 30, 30);

  // make x go forward
  x+=xSpeed;
 
  // make x go back and forth
  if(x>width || x<0){
    // multiply the speed by negative to reverse it
    xSpeed = xSpeed * -1;
  } 
    
  println(x);
    // make y go forward
  y+=ySpeed;
 
  // make x reset
  if(y>height){
    // reset x to 0
    y = 0;
  }
}