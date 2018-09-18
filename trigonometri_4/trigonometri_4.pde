int frame = 0;

void setup ()
{
  size (640, 480);
  frameRate (20);
  smooth();
}

void draw ()
{
  background (0, 0, 0);
  
  
  strokeWeight(4);
  noFill();
  
  for (int i = 0; i < width; i++) 
  {
    stroke ((random(0, 255)), (random(0, 255)), (random(0, 255)));
    point (width / 2 + cos((frame + i) * 0.10) * i, height / 2 + sin((frame + i) * 0.10) * i);
    
  }
  frame++;
}
