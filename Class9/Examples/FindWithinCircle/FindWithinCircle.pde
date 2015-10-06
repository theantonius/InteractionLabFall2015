// Check if the mouse is within the circle

int elX, elY;
float d, r;

void setup(){
  size(320,240);
  elX = width/2;
  elY = height/2;
  d = (width/4);
  r = d/2;
}

void draw(){
  background(0);
  
  // check for radius a^2 + b^2 = c^2
  float a = abs(mouseX - elX);
  float b = abs(mouseY - elY);
  float c = sqrt((a*a)+(b*b));
  print("radius =" + r);
  println(" c = "+c);
  
  // if the hypoteneuse is 
  // larger than the radius  
  // paint white
  if(c > r) {
    fill(255);
  } 
  // else paint it red
  else {
    fill(255,0,0);
  }
  
  ellipse(elX, elY,d,d);
}