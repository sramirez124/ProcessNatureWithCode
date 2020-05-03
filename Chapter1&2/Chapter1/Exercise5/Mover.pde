class Mover
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  PVector deaccelertation;
  
  Mover(){
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0.03, 0);
    deaccelertation = new PVector(-0.05, 0);
  }
  
  void update(){
   keyPressed();
  }
  
  void edges(){
   if (location.x > width)  location.x = 0;
   if (location.x < 0)      location.x = width;
   if (location.y > height) location.y = 0;
   if (location.y < 0)      location.y = height;
  }
  
  void display(){
    stroke(0);
    strokeWeight(2);
    fill(127);
    ellipse(location.x, location.y, 48, 48);
  }
  
  void keyPressed(){
  if (key == 'w'){
  velocity.add(acceleration);
  location.add(velocity);}
  velocity.limit(5);
  if (key == 's'){
  velocity.add(deaccelertation);
  location.add(velocity);
  velocity.limit(0);}
  }
}

// Code modified from https://www.youtube.com/watch?v=TQ_WZU5s_VA&ab_channel=TheCodingTrain
