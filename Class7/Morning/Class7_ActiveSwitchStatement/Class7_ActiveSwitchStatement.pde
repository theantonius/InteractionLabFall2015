// send class http://www.skop.com/brucelee/

int z = 2;

void setup() {
  frameRate(1);
}

void draw() {
  
  z = frameCount;
  
  switch(z) {
  case 0: 
    println("Zero");
    break;
  case 1: 
    println("One");
    break;
  default:
    println("Default");
  }
}