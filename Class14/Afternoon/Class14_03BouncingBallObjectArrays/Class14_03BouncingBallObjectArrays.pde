Ball[] b;

void setup() {
  size(320, 240);
  b = new Ball[40];

  for (int i = 0; i < b.length; i++) {
    int rX = int(random(0,width));
    int rY = int(random(0,height));
    b[i] = new Ball(rX, rY);
  }
}

void draw() {
  background(0);

  for (int i = 0; i < b.length; i++) {
    b[i].render();
    b[i].move();
  }
}

class Ball {
  int x, y;
  int xSpeed, ySpeed;
  int c;
  Ball (int parameterX, int parameterY) {
    x=parameterX;
    y=parameterY;
    c = 20;
    xSpeed=10;
    ySpeed=10;
  }

  void render() {
    ellipseMode(CENTER);
    fill(255);
    ellipse(x, y, c, c);
  }

  void move() {
    x += xSpeed;
    y += ySpeed;

    // change directions
    if (x<0 || x > width) {
      xSpeed = xSpeed * -1;
    }

    if (y<0 || y > height) {
      ySpeed = ySpeed * -1;
    }
  }
}