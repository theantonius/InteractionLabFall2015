import processing.video.*;
Movie myMovie;
void setup() {
  size(640, 360);
  myMovie = new Movie(this, "trex.mov");
  myMovie.play();
}
void draw() {
  image(myMovie, 0, 0);
}
void movieEvent(Movie m) {
  m.read();
}