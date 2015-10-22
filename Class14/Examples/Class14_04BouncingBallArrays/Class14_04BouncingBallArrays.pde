// bouncing ball class example

// Make an array of balls
Ball[] ballArray;

void setup() {
  size(320, 240);
  
  // give the ball array a length
  ballArray = new Ball[10];
  
  // give the ball array initial values
  for (int i = 0; i < ballArray.length; i++) {
    int rX = int(random(0, width));
    int rY = int(random(0, height));
    ballArray[i] = new Ball(rX, rY);
  }
}

void draw() {
  background(0);
  
  // draw and move the ball array
  for (int i = 0; i < ballArray.length; i++) {
    ballArray[i].render();
    ballArray[i].move();
  }
}

class Ball {
  // declare initial class variables
  int x, y;
  int xSpeed, ySpeed;
  int c;

  // constructor
  Ball(int parameterX, int parameterY) {
    // pass the variables to the class
    x = parameterX;
    y = parameterY;
    
    // give default values to other variables
    c = 50;
    xSpeed = 4;
    ySpeed = 4;
  }

  // Draw the ball
  void render() {
    //draw the ball
    ellipseMode(CENTER);
    fill(255);
    ellipse(x, y, c, c);
  }

  // Move the ball
  void move() {
    if (x>width||x<0) {
      xSpeed = xSpeed*-1;
    }
    if (y>height||y<0) {
      ySpeed = ySpeed *-1;
    }
    x+=xSpeed;
    y+=ySpeed;
  }
}