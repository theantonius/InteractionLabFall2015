void setup(){
}

void draw() {
  background(0);  
  if(keyPressed){
      ellipse(70,70,30,30);
  }
}

// call on keyPressed once.
void keyPressed() {
  rect(30,30,30,30);
}