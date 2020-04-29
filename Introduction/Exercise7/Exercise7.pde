walkerNoise w;

void setup() {
  size(1280,720);
  // Create a walker object
  w = new walkerNoise();
  
}

void draw() {
  // Run the walker object
  background(255);
  fill(255);
  w.step();
  w.display();
}
