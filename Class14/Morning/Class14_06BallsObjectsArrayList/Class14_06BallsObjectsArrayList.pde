ArrayList<Ball> balls;

void setup() {
  size(320, 240);

  // how big the array is going to be
//  b = new Ball[400];

  // as long as i is less than array length
  // keep looping
  //for (int i = 0; i < b.length; i++) {

    balls = new ArrayList<Ball>();
    
    int rX = int(random(0, width));
    int rY = int(random(0, height));
    balls.add(new Ball(rX, rY));
//  }
}

void draw() {
  background(0);

  // another for loop to move and render
  for (int i = 0; i < balls.size(); i++) {
    Ball temporaryBall = balls.get(i);
    temporaryBall.render();
    temporaryBall.move();
  }
  
  // if I press on the mouse
  // add a ball
  if(mousePressed){
    balls.add(new Ball(mouseX,mouseY));
  }
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