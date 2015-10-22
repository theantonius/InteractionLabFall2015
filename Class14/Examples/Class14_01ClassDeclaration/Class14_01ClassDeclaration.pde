// Class Declaration Example

// Make a Dog called spot
// the Dog class is treated
// like a variable type
Dog spot;

void setup() {
  // create spot and initialize him
  spot = new Dog("Terrier", color(255));
}

void draw() {
  background(0);

  if (mousePressed) {
    // activate the method
    spot.bark();

    // call on a field
    background(spot.coat);
  }
}

class Dog {
  // Set up your fields
  String breed;
  color coat;

  // construct the class
  Dog (String b, color c) {  
    breed = b; 
    coat = c;
  } 

  // create a method
  void bark() {
    println("Woof!");
  }
}