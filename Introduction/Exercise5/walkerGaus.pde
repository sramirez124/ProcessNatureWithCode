class walkerGaus {
  int x,y;

  walkerGaus() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0);
    strokeWeight(5);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
 void step() {
    
    float num = randomGaussian();
    float gausX = randomGaussian();
    float gausY = randomGaussian();
    // A 40% of moving to the right!
    if (num < gausX) {    
      x++;
    } 
    else{
      x--;
    } 
    if (num < gausY) {
      y++;
    } 
    else{
      y--;
    }
  
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}
