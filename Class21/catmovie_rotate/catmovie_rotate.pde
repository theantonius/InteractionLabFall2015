import processing.video.*;
Movie myMovie;
void setup() {
  size(640, 360);
  myMovie = new Movie(this, "FunnyCat.mp4");
  myMovie.play();
}
void draw() {
  pushMatrix();
  translate(mouseX,mouseY);
  rotate(radians(map(mouseY,0,height,0,360)));
  imageMode(CENTER);
  image(myMovie, 0,0,width/4,height/4);
  popMatrix();
}
void movieEvent(Movie m) {
  m.read();
}