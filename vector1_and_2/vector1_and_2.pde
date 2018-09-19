

PVector center;
PVector direction;
PVector speed;
PVector location;
PVector velocity;

void setup()
{
  size (600, 600);
  smooth();
  background (0, 0, 0);
  center = new PVector (300, 300);
  direction = new PVector (0, 0);
  speed = new PVector (5, 5);
  location = new PVector (300, 300);
  velocity = new PVector (2, 5);
}

void draw ()
{
  noStroke();
  fill (255, 10);
  rect (0, 0, width, height);
  strokeWeight (5);
  stroke (random(0, 255), (random(0, 255)), (random(0, 255)));
  followMouse ();
  bouncingBall ();
}

void followMouse ()
{
  direction.x = mouseX - center.x;
  direction.y = mouseY - center.y;
  direction.normalize ();
  
  center.x = center.x + direction.x * speed.x;
  center.y = center.y + direction.y * speed.y;
  
  fill (random(0, 255), (random(0, 255)), (random(0, 255)));
  ellipse (center.x, center.y, 20, 20);
}

void bouncingBall ()
{
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
