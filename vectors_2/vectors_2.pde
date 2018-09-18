PVector location;
PVector velocity;

void setup()
{
 size (300, 300);
 smooth();
 background (0, 0, 0);
 location = new PVector (100 , 100);
 velocity = new PVector (8, 5);
}

void draw()
{
  noStroke();
  fill (255, 30);
  rect (0, 0, width, height);
  strokeWeight(10);
  
  location.add(velocity);
  
  if ((location.x > height) || (location.x < 0))
  {
    velocity.x = velocity.x * -1;
  }
  
  if ((location.y > height) || (location.y < 0))
  {
    velocity.y = velocity.y * -1;
  }
  
  stroke (0, 0, 0);
  fill (175);
  ellipse (location.x, location.y, 20, 20);
}
