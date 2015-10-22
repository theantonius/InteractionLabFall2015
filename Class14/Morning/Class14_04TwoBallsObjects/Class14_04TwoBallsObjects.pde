Ball b;
Ball b2;

void setup() {
  size(320, 240);
  b = new Ball(width/2,height/2);
    b2 = new Ball(width/4,height/4);
}

void draw() {
  background(0);
  
  b.render();
  b.move();
  
    b2.render();
  b2.move();
}

class Ball {
  // fields
  int x, y;
  int xSpeed, ySpeed;
  int c;

  Ball(int parameterX, int parameterY) {
    // parameters
    x = parameterX;
    y = parameterY;

    // defaults
    xSpeed = 10;
    ySpeed = 10;
    c = 20;
  }

  // draw the ball
  void render() {
    ellipseMode(CENTER);
    fill(255);
    ellipse(x, y, c, c);
  }

  // move it
  void move() {
    // move the ball
    x += xSpeed;
    y += ySpeed;

    if (x<0||x>width) {
      xSpeed = xSpeed * -1;
    }

    if (y<0||y>height) {
      ySpeed = ySpeed * -1;
    }
  }
}