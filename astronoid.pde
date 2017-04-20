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

void setup() {
  size(512, 512);  
  ship = new Ship();
  astroid = new Astroid();
}

void draw() {  
  background(255);
  ship.display();
  ship.update();
  astroid.display();
  astroid.update();
}


void keyPressed() {  
  ship.keyPressed();
}