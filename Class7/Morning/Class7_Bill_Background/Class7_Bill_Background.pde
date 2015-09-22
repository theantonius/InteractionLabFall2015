void setup() {
  //this changes the size
  size(600, 480);
  background(255, 255, 255);
  noStroke();
  // alpha changes by 30
  // y changes by 50
  
  int a = 0;
  int y = -1;
  while(y<height){
   fill(1, 1, 1, a);
   rect(-1, y, 601, 50);
  
  a += 30;
  y += 50;
  }
  println("escape!!!");
  
  //fill(1, 1, 1, 25);
  //rect(-1, -1, 601, 50);
  //fill(1, 1, 1, 30);
  //rect(-1, 49, 601, 50);
  //fill(1, 1, 1, 60);
  //rect(-1, 99, 601, 50);
  //fill(1, 1, 1, 90);
  //rect(-1, 149, 601, 50);
  //fill(1, 1, 1, 120);
  //rect(-1, 199, 601, 50);
  //fill(1, 1, 1, 150);
  //rect(-1, 249, 601, 50);
  //fill(1, 1, 1, 180);
  //rect(-1, 299, 601, 50);
  //fill(1, 1, 1, 210);
  //rect(-1, 349, 601, 50);
  //fill(1, 1, 1, 230);
  //rect(-1, 399, 601, 50);
  //fill(1, 1, 1, 270);
  //rect(-1, 449, 601, 50);
}

void draw(){
}