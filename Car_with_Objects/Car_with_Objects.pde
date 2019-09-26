
Car chungus = new Car();
ArrayList<Car> Cars = new ArrayList<Car>();
void setup() {
  //window modifications
  size(1000, 800);
  background(255);


  //shape properties
  noStroke();
  fill(0, 0, 255);
}

void draw() {
  //wipe
  background(0,100,100);

  chungus.display();
  chungus.move();


  }

void keyPressed() {
  if (key == 'a') {       // if a is pressed, boolean left will be true, and the x coordinate will decreased
    chungus.a();
  }
  if (key == 'd'){        // if d is pressed, it will move right
   chungus.d();
  }
  if (key == 'w') {      // if w is pressed, it will move up and the car will look different
    chungus.w();
  }
  if (key == 's') {       // if s is pressed, it will move down and the car will look different
   chungus.s();
  }
  if (key == 'p') {      // if p is pressed, it will go faster
    chungus.p();
  }
  if (key == 'o') {      // if o is pressed, it will slow down
   chungus.o();
  }
}

void keyReleased() {
  if (key == 'a'){       // if a is released, it will stop moving left
   chungus.aReleased();
  }
  if (key == 'd'){        // if d is released, it will stop moving right
    chungus.dReleased();
  }
  if (key == 'w') {       // if w is released, it will stop moving and the car will look the same as before
   chungus.wReleased();
  }
  if (key == 's'){      // if s is released, it will stop moving and the car will look the same as before
   chungus.sReleased();
  } 
  if (key == 'p'){      //if p is released, it will stop increasing in speed
    chungus.pReleased();
  }
  if (key == 'o'){      // if o is released, it will stop decreasing in speed
    chungus.oReleased();
  }

}


  void mouseClicked(){
  Cars.add(new Car());
}
