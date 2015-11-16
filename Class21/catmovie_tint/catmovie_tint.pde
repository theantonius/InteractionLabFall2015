import processing.video.*;
Movie myMovie;
void setup() {
  size(640, 360);
  myMovie = new Movie(this, "FunnyCat.mp4");
  myMovie.play();
}
void draw() {
  tint(0, 153, 204); 
  image(myMovie, 0, 0);
}
void movieEvent(Movie m) {
  m.read();
}