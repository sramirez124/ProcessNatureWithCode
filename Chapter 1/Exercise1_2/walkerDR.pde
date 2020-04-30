class walkerDR {
PVector location;
PVector velocity;

  walkerDR() {
    location = new PVector(100,100);
    velocity = new PVector(2.5,5);
  }

  void display() {
    stroke(0);
    fill(175);
    ellipse(location.x,location.y,50,50);
  }

 void step() {
   
   
    int choice = int(random(4));
    
    if (choice == 0) {
      location.x++;
    } else if (choice == 1) {
      location.x--;
    } else if (choice == 2) {
      location.y++;
    } else {
      location.y--;
    }
    
  //[full] We still sometimes need to refer to the individual components of a PVector and can do so using the dot syntax: location.x, velocity.y, etc.
  if ((location.x > width) || (location.x < 0)) { //[bold]
    velocity.x = velocity.x * -1; //[bold]
  } //[bold]
  if ((location.y > height) || (location.y < 0)) { //[bold]
    velocity.y = velocity.y * -1; //[bold]
  } //[bold]
  //[end]
  }
}
