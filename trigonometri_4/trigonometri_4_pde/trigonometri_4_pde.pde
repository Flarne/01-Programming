int frame = 0;

void setup ()
{
  size (640, 480);
  smooth();
}

void draw ()
{
  background (0, 0, 0);
  int numberOfPoints = 200;
  
  stroke (255, 255, 255);
  strokeWeight(4);
  noFill();
  
    for (int i = 0; i < numberOfPoints; i++) 
    {
      point (width / 2 + cos((frame + i) * 0.10) * i, height / 2 + sin((frame + i) * 0.10) * i);
    }
    
  frame++;
}
