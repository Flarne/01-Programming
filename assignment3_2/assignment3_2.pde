int frame = 0;
int numberOfPoints = 100;

void setup()
{
  size(640, 480);
  strokeWeight(5);
}

void draw()
{
  background(198, 78, 140);
 
  for(int i = 0; i < 2 * PI * 100; i += 25)
  {
    
  stroke ((random(0, 255)), (random(0, 255)), (random(0, 255)));
  point(320 + cos((frame +i) * 0.02) * 100, 240 + sin((frame +i) * 0.02) * 100);
  }

  frame++;
}
