int x, y;
int xSpeed, ySpeed;
int c;

void setup(){
  size(320,240);
  x=width/2;
  y=height/2;
  xSpeed = 10;
  ySpeed = 10;
  c = 20;
}

void draw(){
  background(0);
  
  ellipseMode(CENTER);
  fill(255);
  ellipse(x,y,c,c);
  
  // move the ball
  x += xSpeed;
  y += ySpeed;
  
  if(x<0||x>width){
    xSpeed = xSpeed * -1;
  }
  
  if(y<0||y>height){
    ySpeed = ySpeed * -1;
  }
}