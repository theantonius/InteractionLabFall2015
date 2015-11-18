// Capturing Two Cameras

import processing.video.*;

Capture cam1;
Capture cam2;

void setup() {
  size(640, 480);
  
  // list all the cameras available
  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(i+" "+cameras[i]);
    }

    // The camera can be initialized directly using an 
    // element from the array returned by list():
    
    cam1 = new Capture(this, cameras[0]);
    cam1.start();

    cam2 = new Capture(this, cameras[15]);
    cam2.start();
  }
}

void draw() {
  if (cam1.available() == true) {
    cam1.read();
  }
  image(cam1, 0, 0, width/2, height);

  if (cam2.available() == true) {
    cam2.read();
  }
  image(cam2, width/2, 0, width/2, height);
}