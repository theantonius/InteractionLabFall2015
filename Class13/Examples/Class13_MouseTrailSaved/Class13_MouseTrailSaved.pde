// Code to save a trail of mouseX and mouseY

int num = 1;
int[] x = new int[num];
int[] y = new int[num];

int counter = 1; // start counter at 1

void setup() { 
  size(100, 100);
  noStroke();
  fill(255, 102);

  // give negative numbers so you don't see the first ellipse
  x[0] = -width;
  y[0] = -height;
}

void draw() {
  background(0);
  
  // draw the cursor
  ellipse(mouseX,mouseY,10,10);

  // draw all the x and ys
  for (int i = 0; i < counter; i++) {
    ellipse(x[i], y[i], 10, 10);
  }

  if (mousePressed) {
    counter++;
    x = append(x, mouseX); // adds mouseX to the end
    y = append(y, mouseY);
  }
}