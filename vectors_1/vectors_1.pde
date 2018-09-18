

void setup ()
{
  size (640, 480);
  smooth();
  background (255, 255, 255);
}

  PVector center = new PVector(320, 240);
  PVector direction = new PVector(0, 0);
  PVector speed = new PVector(2, 2);

void draw ()
{
  noStroke();
  fill(0, 10);
  rect (0, 0, width, height);
  strokeWeight(5);
  stroke (random(0, 255), (random(0, 255)), (random(0, 255)));
  
  direction.x = mouseX - center.x;
  direction.y = mouseY - center.y;
  direction.normalize ();
  
  center.x = center.x + direction.x * speed.x;
  center.y = center.y + direction.y * speed.y;
  
  fill (random(0, 255), (random(0, 255)), (random(0, 255)));
  ellipse (center.x, center.y, 20, 20);
}
