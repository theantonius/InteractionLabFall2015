// drawing a grid with arrays

// make two arrays
int[] arrayX;
int[] arrayY;

// define the row and column size
int rowsX, colsY;

void setup() {
  size(320, 240);
  
  // define the size of the row and column
  rowsX = 10;
  colsY = 10;
  
  // and make the arrays that size
  arrayX = new int[rowsX];
  arrayY = new int[colsY];
  
  // create an array of row numbers
  for (int i = 0; i < rowsX; i++) {
    arrayX[i] = (i * (width/rowsX));
  }
  
  // create an array of column numbers
  for (int i = 0; i < colsY; i++) {
    arrayY[i] = (i * (height/colsY));
  }
}

void draw() {
  
  // draw the row lines
  for (int i = 0; i < rowsX; i++) {
    line(arrayX[i], 0, arrayX[i], height);
  }
  
  // draw the column lines
  for (int i = 0; i < colsY; i++) {
    line(0, arrayY[i], width, arrayY[i]);
  }
}