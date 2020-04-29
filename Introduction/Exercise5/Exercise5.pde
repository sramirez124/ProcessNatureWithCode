walkerGaus w;

void setup() {
  size(1280,720);
  // Create a walker object
  w = new walkerGaus();
  background(255);
}

void draw() {
  // Run the walker object
  w.step();
  w.display();
}
