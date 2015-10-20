
// create an array of x and ys
int[] arrayX;
int[] arrayY;

void setup() {
  
  // declare the arrays to have 10 values
  arrayX = new int[10];
  arrayY = new int[10];
  
  // loop through. Each one give it a random number between 0 and width or height
  
  for (int i = 0; i < 10; i++) {
    arrayX[i] = int(random(0, width));
    arrayY[i] = int(random(0, height));
  }
  
}
void draw() {
  
  // draw them all!
  for (int i = 0; i < 10; i++) {
    ellipse(arrayX[i], arrayY[i], 20, 20);
  }
}