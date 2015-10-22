// Single bouncing ball example

// declare the ball variables
int x, y;
int xSpeed, ySpeed;
int c;

void setup(){
  size(320,240);
  
  // give the ball variables initial values
  x = mouseX;
  y = mouseY;
  c = 50;
  xSpeed = 4;
  ySpeed = 4;
}

void draw(){
  background(0);
  
  //draw the ball
  ellipseMode(CENTER);
  fill(255);
  ellipse(x,y,c,c);
  
  // move the ball
  if(x>width||x<0){
    xSpeed = xSpeed*-1;
  }
  if(y>height||y<0){
    ySpeed = ySpeed *-1;
  }
  x+=xSpeed;
  y+=ySpeed;
}