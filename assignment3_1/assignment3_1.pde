int frame = 0;
float multiplier = 0.002;
int numberOfPoints = 100;

void setup()
{
  size(640, 480);
  strokeWeight(5);
}

void draw()
{
  background(161);
  float distance = width / 100.0;
 
  for(int i = 0; i < width; i += distance * 2)
  {
  //Draw animated point
  stroke ((random(0, 255)), (random(0, 255)), (random(0, 255)));
  point(distance + i, 240 + sin((frame + i) * 0.02) * 100);
  
  stroke (123, 254, 3);
  point(distance + i, 240 + cos((frame + i) * 0.02) * 100);
  }

  frame++;
}
