class walkerDR {
  float x,y;
  float tx,ty;
  
  walkerDR() {
    x = width/2;
    y = height/2;
    
    tx = 0;
    ty = 10000;
  }

  void display() {
    stroke(0);
    strokeWeight(10);
    point(x,y);
  }

  // Randomly move up, down, left, right, or stay in one place
 void step() {
    
    x = map(noise(tx), 0, 1, 0, width);
    y = map(noise(ty), 0, 1, 0, height);
 
    tx += 0.01;
    ty += 0.01;
  
    x = constrain(x,0,width-1);
    y = constrain(y,0,height-1);
  }
}
