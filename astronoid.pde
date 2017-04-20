/*
class magnet
 Electic Field
 Magnet Field
 Charge - 2 states: positive, negative
 
 class ship
 Charge - 3 states: positive, negative, neutral
 Velocity
 
 class world
 Force 
 
 */
Ship ship;
Astroid astroid;
ArrayList<Astroid> astroids = new ArrayList<Astroid>();


void setup() {
  size(680, 680);  
  ship = new Ship();
  for (int i = 0; i < 25; i++) {
    astroid = new Astroid();
    astroids.add(astroid);
  }
}

void draw() {  
  background(255);
  ship.display();

  for (Astroid myAstroid : astroids) {
    myAstroid.display();  
    myAstroid.edges();
    PVector field = myAstroid.attract(ship);
    ship.update(field);
  }
}


void keyPressed() {  
  ship.keyPressed();
}