int[] arrayX;
int[] arrayY;

void setup() {
  arrayX = new int[10];
  arrayY = new int[10];
  for (int i = 0; i < 10; i++) {
    arrayX[i] = int(random(0, width));
    arrayY[i] = int(random(0, height));
  }
}
void draw() {
  for (int i = 0; i < 10; i++) {
    ellipse(arrayX[i], arrayY[i], 20, 20);
  }
}