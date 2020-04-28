class walker50 
{
  int x, y;

  walker50() 
 {
    x = width/2;
    y = height/2;
  }

  void display() 
  {
    stroke(0);
    strokeWeight(2);
    point(x, y);
  }


   void step()
    {
      float num = random(0, 1);
      float num50 = random(0, 1);
      float newX = random(0, 1);
      float newY = random(0, 1);
      float newNegX = random(0, 1);
      float newNegY = random(0, 1);
      
      if (num < 0.5) {    
      int xdir = (mouseX-x);
      int ydir = (mouseY-y);
      if (xdir != 0) {
        xdir /= abs(xdir);
      } 
      if (ydir != 0) {
        ydir /= abs(ydir);
      }
      x += xdir;
      y += ydir;
      
      if (num > 0.5)
      {
        if (num50 < newX)
        {
          x++;
        }
        if (num50 < newNegX)
        {
          x--;
        }
        if (num50 < newY)
        {
          y++;
        }
        if (num50 < newNegY)
        {
          y--;
        }
      }
      
    }
  }  
}
