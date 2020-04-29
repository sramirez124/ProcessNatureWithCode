void setup() {
  size(400,400);
  background(0);
}

void draw() {
  //create an alpha blended background
  fill(0,1);
  rect(0,0,width,height);
  
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);

  //define standard deviation and mean
  float sd = 200; float mean = 200;
  //scale by standard deviation and mean

  //get more gaussian numbers, this time for position
  float numx = randomGaussian();
  float numy = randomGaussian();
  sd = width/10;
  mean = width/2;
  numx = ( numx * sd ) + mean;
  numy = ( numy * sd ) + mean;

  //draw an ellipse with gaussian generated color and position
  noStroke();
  fill(r,g,b);
  ellipse(numx, numy, 50, 100);
}
