// Class 13 - Arrays

int x, y; // make a single x y location
int c; // make a circumference variable

// make arrays of x and y locations
int[] arrayX;
int[] arrayY;
int arraySize;

void setup(){
  size(320,240);
  
  // give single x y location values and size
  x = width/2;
  y = height/2;
  c = 20;
  
  // define arrays and array size
  arraySize = 10;  
  arrayX = new int[arraySize];
  arrayY = new int[arraySize];
  
  // use for loops to give each
  // array values
  
  for(int i = 0; i < arraySize; i++){
    arrayX[i] = int(random(0,width));
    arrayY[i] = int(random(0,height));
  }
}

void draw(){
  background(0);
  
  // draw an ellipse at a single x y location
  fill(255);
  ellipse(x,y,c,c);
  
  for(int i = 0; i < arraySize; i++){
    fill(0,0,255);
    ellipse(arrayX[i],arrayY[i],c,c);
  }
}