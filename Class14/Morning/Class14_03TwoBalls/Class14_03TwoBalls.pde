int x, y;
int xSpeed, ySpeed;
int c;

int x2, y2;
int xSpeed2, ySpeed2;
int c2;

void setup(){
  size(320,240);
  x=width/2;
  y=height/2;
  xSpeed = 10;
  ySpeed = 10;
  c = 20;
  
    x2=width/4;
  y2=height/4;
  xSpeed2 = 10;
  ySpeed2 = 10;
  c2 = 20;
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
  
    ellipseMode(CENTER);
  fill(255);
  ellipse(x2,y2,c2,c2);
  
  // move the ball
  x2 += xSpeed2;
  y2 += ySpeed2;
  
  if(x2<0||x2>width){
    xSpeed2 = xSpeed2 * -1;
  }
  
  if(y2<0||y2>height){
    ySpeed2 = ySpeed2 * -1;
  }
}