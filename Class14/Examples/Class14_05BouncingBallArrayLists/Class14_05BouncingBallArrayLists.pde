// bouncing ball ArrayList example

// create an ArrayList of balls
ArrayList<Ball> ballArrayList;

void setup() {
  size(320, 240);
  
  // initialize
  ballArrayList = new ArrayList<Ball>();
  
  // give initial values
  for (int i = 0; i < 2; i++) {
    int rX = int(random(0, width));
    int rY = int(random(0, height));
    ballArrayList.add(new Ball(rX, rY));
  }
}

void draw() {
  background(0);
  
  // draw and move the balls
  for (int i = 0; i < ballArrayList.size(); i++) {
    Ball tempBall = ballArrayList.get(i);
    tempBall.render();
    tempBall.move();
  }
}

void mouseClicked(){
  // when the mouse is clicked, add a new ball
  ballArrayList.add(new Ball(mouseX, mouseY));
}

class Ball {
  // declare variables
  int x, y;
  int xSpeed, ySpeed;
  int c;

  // constructor
  Ball(int parameterX, int parameterY) {
    // pass the parameters
    x = parameterX;
    y = parameterY;
    
    // give default values
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