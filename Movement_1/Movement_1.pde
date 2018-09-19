

PVector location;
PVector direction;

float velocityY = 8;
float velocityX = 10;
float a = 1;
int time;

float frameTime; // time for draw

void setup ()
{
  size (800, 600);
  location = new PVector (100, 100);
  direction = new PVector (velocityX , velocityY);
  frameRate (60);
  
}

void draw ()
{
  int currentTime = millis ();
  
  frameTime = currentTime - time; // delta time = time passed during draw()
  frameTime = frameTime * 0.001; // frameRate / 1000 - millis -> s
  // 16 ms
  
  background (255, 255, 255, 255);
  
  
  //direction.x = direction.x + direction.x * frameTime;
  //direction.y = direction.y + direction.y * frameTime;
  
  //direction.x = direction.x + a;
  
  location.add (direction);
  ellipse (location.x, location.y, 10 ,10);
  
  if (location.x > width || location.x < 0)
  {
    //direction.x = direction.x * - 1;
    location.x = 0;
  }
  
  if (location.y > height || location.y < 0)
  {
    direction.y = direction.y * - 1;
  }
  time = currentTime;
}
