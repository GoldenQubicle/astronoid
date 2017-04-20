class Astroid {
  PVector xy, velocity;
  float mass, size;

  Astroid() {
    xy = new PVector(random(width), random(height));
    velocity = new PVector(random(2.5), random(2.5));
    mass = random(200);
    size = map(mass,0,200, 2,20);
  }
  
  
  PVector attract (Ship s){
    PVector force = PVector.sub(this.xy, s.xy);
    float distance = force.mag();
    force.normalize();
    float strength = (8*this.mass) / (distance*distance);
    force.mult(strength);
   return force;
  }

  void edges() {  
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
    ellipse(xy.x, xy.y, size, size);
  }
}