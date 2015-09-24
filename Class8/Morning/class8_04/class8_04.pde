int y = 120;
int x = 160;
void setup(){
  size(320,240);
}

void draw(){
  rect(x,y,30,30);
  
  //if(key==CODED){
    if(keyCode == UP){
      y--;
    }
    if(keyCode == DOWN){
      y++;
    }
    if(keyCode == LEFT){
      x--;
    }
    if(keyCode == RIGHT){
      x++;
    }
//  }
}