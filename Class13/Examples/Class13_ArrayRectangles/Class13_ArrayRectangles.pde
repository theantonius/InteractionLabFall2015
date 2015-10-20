// drawing a grid of rectangles with individual values
// very similar to using lines
// except now you need to use nested for loops
// and 2d arrays.

// make one 2D array
int[][] arrayXY;

// define the row and column size
int rowsX, colsY;

// define the grid size
int arrayTotal, rowsXSize, colsYSize;

void setup() {
  size(320, 240);

  // define the size of the row and column
  rowsX = 10;
  colsY = 10;

  // define the total number of arrays and row/column sizes
  arrayTotal = rowsX * colsY;
  rowsXSize = width/rowsX;
  colsYSize = height/colsY;

  // and make the arrays
  arrayXY = new int[arrayTotal][arrayTotal];

  // add values to the arrays in a nested for loop
  for (int i = 0; i < rowsX; i++) {
    for (int j = 0; j < colsY; j++) {
      arrayXY[i][j] = int(random(0, 255));
    }
  }
}

void draw() {
  // use a nested for loop again to draw
  for (int i = 0; i < rowsX; i++) {
    for (int j = 0; j < colsY; j++) {
      fill(arrayXY[i][j]);
      rect((i*rowsXSize),(j*colsYSize),rowsXSize,colsYSize);
      
      fill(255,0,0);
      text(arrayXY[i][j],(i*rowsXSize),(j*colsYSize)+colsYSize);
    }
  }
}