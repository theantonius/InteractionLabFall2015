// bouncing ball class example

// declare a ball variable
Ball b1;
Ball b2;

void setup() {
  size(320, 240);
  
  // give the ball variable initial values
  b1 = new Ball(width/2,height/2);
  b2 = new Ball(width/2,height/4);
}

void draw() {
  background(0);
  
  // draw the ball
  b1.render();
  b2.render();
  
  // move the ball
  b1.move();
  b2.move();
}

class Ball {
  // declare the Ball variables
  int x, y;
  int xSpeed, ySpeed;
  int c;

  // constructor
  Ball(int parameterX, int parameterY) {
    // pass the initial variables to the ball
    x = parameterX;
    y = parameterY;
    
    // give initial default values to the other variables
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