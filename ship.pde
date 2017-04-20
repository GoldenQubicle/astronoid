class Ship {
  PVector xy, velocity, acceleration;
  int charge;
  color temp; 

  Ship() {
    xy = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    charge = 0;
    temp = color(0, 255, 0);
  }

  void display() {
    noStroke();
    fill(temp);
    rect(xy.x, xy.y, 20, 10);
  }

  void update() {
    if (charge == 1) {
      acceleration = PVector.sub(astroid.xy, xy);
    }
    if (charge == 2) {
      acceleration = PVector.add(astroid.xy, xy);
    }
    acceleration.setMag(0.1);    

    velocity.add(acceleration);
    velocity.limit(2);
    xy.add(velocity);
    
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
    if (key == 's') {
      charge = 0;
      temp = color(0, 255, 0);
    }
    if (key == 'a') {
      charge = 1;
      temp = color(0, 0, 255);
    }
    if (key == 'd') {
      charge = 2;
      temp = color(255, 0, 0);
    }
  }
}