void setup() {
}

void draw() {
  //  background(255);
  println(mouseX + " : " + pmouseX);
  println(mouseY + " : " + pmouseY);
  line(mouseX, mouseY, pmouseX, pmouseY);
  //  ellipse(mouseX,mouseY,pmouseX,pmouseY);
}