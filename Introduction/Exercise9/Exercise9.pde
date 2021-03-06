// The Noise 2D animation code should represent something like TV static

float increment = 0.50;
// The noise function's 3rd argument, a global variable that increments once per cycle
float zoff = 3.0;  
// We will increment zoff differently than xoff and yoff
float zincrement = 2.50; 

void setup() {
  size(800,600);
}

void draw() {
  background(0);
  
  noiseDetail(0,0.75f);
  
  loadPixels();

  float xoff = 0.0; // Start xoff at 0
  
  // For every x,y coordinate in a 2D space, calculate a noise value and produce a brightness value
  for (int x = 0; x < width; x++) {
    xoff += increment;   // Increment xoff 
    float yoff = 0.0;   // For every xoff, start yoff at 0
    for (int y = 0; y < height; y++) {
      yoff += increment; // Increment yoff
      
      // Calculate noise and scale by 255
      float bright = noise(xoff,yoff,zoff)*255;

      // Try using this line instead
      //float bright = random(0,255);
      
      // Set each pixel onscreen to a grayscale value
      pixels[x+y*width] = color(bright,bright,bright);
    }
  }
  updatePixels();
  
  zoff += zincrement; // Increment zoff
  
  
}
