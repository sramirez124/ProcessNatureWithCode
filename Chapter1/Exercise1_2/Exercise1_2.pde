walkerDR w;

void setup() {
  size(1280,720);
  // Create a walker object
  

  w = new walkerDR();
}

void draw() {
  // Run the walker object
  background(255);
  w.step();
  w.display();
}
