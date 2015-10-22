ArrayList<Ball> b;

void setup() {
  size(320, 240);
  b = new ArrayList<Ball>();

  for (int i = 0; i < 2; i++) {
    int rX = int(random(0, width));
    int rY = int(random(0, height));

    b.add(new Ball(rX, rY));
  }
}

void draw() {
  background(0);

  for (int i = 0; i < b.size(); i++) {
    Ball tempB;
    
    tempB = b.get(i);
    tempB.render();
    tempB.move();
  }
  
  if(mousePressed){
    b.add(new Ball(mouseX,mouseY));
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