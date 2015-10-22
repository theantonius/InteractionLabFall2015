// Class Declaration Example
// Make a Dog d
Dog d;

void setup(){
  // make a temporary color
  color dogsColor = color(255,20,20);
  d = new Dog("German Shepherd",dogsColor);
}

void draw(){
}

void mousePressed(){
  d.bark();
}

class Dog {
  String breed;
  color coat;
  Dog (String b, color c) {  
    breed = b; 
    coat = c; 
  } 
  void bark() {
    println("Woof!");
  }
}