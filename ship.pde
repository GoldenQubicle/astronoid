class Ship {
  PVector xy, velocity, acceleration;
  int charge;
  color temp; 

  Ship() {
    xy = new PVector(width/2, height/2);
    velocity = new PVector();
    acceleration = new PVector();
    charge = 0;
    temp = color(255, 0, 0);
  }

  void display() {
    noStroke();
    fill(temp);
    rect(xy.x, xy.y, 20, 10);
  }

  void update(PVector field) {
    if (charge == 1) {   
      acceleration.add(field);
      velocity.add(acceleration);
      //acceleration.setMag(200);
    }


    
    velocity.limit(.1);
    xy.add(velocity);
    acceleration.mult(0);




    if (xy.x < 0) {      
      xy.x = width;
    }
    if (xy.x > width) {
      xy.x = 0;
    }
    if (xy.y < 0) {      
      xy.y = height;
    }
    if (xy.y > height) {
      xy.y = 0;
    }
  }

  void keyPressed() {
    if (key == 'w') {
      if (charge == 0) {
        charge = 1;
        temp = color(0, 255, 0);
      } else {
        charge = 0;
        temp = color(255, 0, 0);
      }
    }
  }
}