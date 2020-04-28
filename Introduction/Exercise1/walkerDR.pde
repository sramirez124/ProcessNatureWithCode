class walkerDR {
  int x,y;

  walkerDR() {
    x = width/2;
    y = height/2;
  }

  void display() {
    stroke(0);
    strokeWeight(10);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
 void step() {
    
    float num = random(1);
    // A 40% of moving to the right!
    if (num < 0.5) {    
      x++;
    } else if (num < 0.6) {
      x--;
    } else if (num < 0.9) {
      y++;
    } else {
      y--;
    }
  
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}
