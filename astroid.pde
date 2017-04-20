class Astroid {
  PVector xy, velocity;


  Astroid() {
    xy = new PVector(random(width/2), random(height/2));
    velocity = new PVector(random(3), random(3));
  }

  void update() {

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


  void display() {

    noStroke();
    fill(128, 128, 128);
    ellipse(xy.x, xy.y, 5, 5);
  }
}