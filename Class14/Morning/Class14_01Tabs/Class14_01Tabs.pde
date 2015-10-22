// Class Declaration Example

// Make a Dog called spot
// the Dog class is treated
// like a variable type
Dog snoop;

void setup() {
  // create spot and initialize him
  snoop = new Dog("Snoop Dogg", color(100));
}

void draw() {
  background(0);
  
  fill(snoop.coat);
  snoop.bark();
  
  if (mousePressed) {
    // activate the method
    snoop.bark();

    // call on a field
    background(snoop.coat);
  }
}