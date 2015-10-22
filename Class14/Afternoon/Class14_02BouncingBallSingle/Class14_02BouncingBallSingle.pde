int x, y;
int xSpeed, ySpeed;
int c;

void setup(){
  size(320,240);
  x=width/2;
  y=height/2;
  c = 20;
  xSpeed=10;
  ySpeed=10;
}

void draw(){
  background(0);
  
  ellipseMode(CENTER);
  fill(255);
  ellipse(x,y,c,c);
  
  x += xSpeed;
  y += ySpeed;
  
  // change directions
  if(x<0 || x > width){
    xSpeed = xSpeed * -1;
  }
  
  if(y<0 || y > height){
    ySpeed = ySpeed * -1;
  }
}