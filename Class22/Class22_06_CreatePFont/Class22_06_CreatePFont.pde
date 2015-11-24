// Creating a Font

PImage bunny;
PFont f;// Step 1: Declare PFont variable

void setup() {
  size(482, 487);
  f = createFont("Georgia", 16); // Step 2: Create Font

  bunny = loadImage("danbunnyedit.jpg");
  textFont(f, 25);
}
void draw() {
  background(bunny);
  textFont(f, 25);
  fill(0);
  text ("I hate rabbits", 300, 100);
}