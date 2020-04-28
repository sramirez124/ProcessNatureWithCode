walker50 w;

void setup() {
  size(640,360);
  // Create a walker object
  w = new walker50();
  background(255);
}

void draw() {
  // Run the walker object
  w.step();
  w.display();
}
