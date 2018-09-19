int frame = 0;
int numberOfPoints = 100;
int radius = 100;
float dotDistance = 15;

void setup()
{
  size(640, 480);
}

void draw()
{
  background(0, 0, 0);
  strokeWeight(4);
  spiral(numberOfPoints);
  circle (numberOfPoints);
  waves ();

  frame++;
}
  
void spiral (int numberOfPoints)
{
  //numberOfPoints = 100;
  
  for (int i = 0; i < numberOfPoints; i++)
  {
    stroke ((random(0, 255)), (random(0, 255)), (random(0, 255)));
    point (width / 2 + cos((frame + i) * 0.20) * i, height / 2 + sin((frame + i) * 0.20) * i); 
  }
}

void circle (int numberOfPoints)
{
  //int numberOfPoints = 4;
  //dotDistance = ((2 * PI * radius) / numberOfPoints);
  
  stroke (0, 255, 0);
  
  for (int i = 0; i < width; i += dotDistance)
  {
    point(width / 2 + cos((frame - i) * 0.02) * numberOfPoints, height / 2 + sin((frame - i) * 0.02) * numberOfPoints);
  }
}

void waves ()
{
  stroke (0, 255, 0);
  
  for (int i = 0; i < width; i += dotDistance)
  {
    point(dotDistance + i, 100 + sin((frame + i) * 0.01) * 30);
  }
  
  stroke (0, 0, 255);
  
  for (int i = 0; i < width; i += dotDistance)
  {
    point(dotDistance + i, 380 + cos((frame + i) * 0.01) * 30);
  }
}
