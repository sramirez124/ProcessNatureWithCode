float t = 0;
float y = height/2; // weird issue where diving by two moves the ellipse closer to the top
float sety = 3;
float size = 60;
void setup(){
  size(600,400);
  
}

void draw(){
 background(0);
 fill(255);
 
 t = t + 0.01;
 
 float x = noise(t);
 x = map(x, 0, 1, 0, width);
 ellipse(x, y, size, size);
 
 y = y + sety;
 if (y + size/2 > height || y - size/2 < 0)
 {
   sety = sety * -1;
 }
 if(y + size/2 == height/2)
 {
   sety = sety * -1;
 }
 
 println(sety);
}
