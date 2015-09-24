void setup(){
  size(800,600);
}

void draw(){
  if(mousePressed){
    ellipse(mouseX,mouseY,pmouseX,pmouseY);
  }
}