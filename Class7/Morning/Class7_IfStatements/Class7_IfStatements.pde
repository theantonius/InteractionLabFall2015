int x = 0;
int y = 0;

int xSpeed = 10;
int ySpeed = 100;

void setup(){
  size(320,240);
}

void draw(){
  background(0);
  rect(x,y,20,20);

  x+=xSpeed;
  y+=ySpeed;
  if(x>width || x < 0){ // using or
   //xSpeed=xSpeed*-1;
  //}
//  //if(x<0){
    xSpeed = xSpeed*-1;
  }
    if(y>height){
    ySpeed=ySpeed*-1;
  }
  if(y<0){
    ySpeed = ySpeed *-1;
  }
}