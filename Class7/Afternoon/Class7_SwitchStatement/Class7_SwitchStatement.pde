int z = 0;

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
  case 2: 
    println("Two");
    break;
  case 10: 
    println("Ten");
    break;
  default:
    println("Default");
    break;
  }
}