
int frame = 0;

void setup()
{
  size (640, 480);
  frameRate(20);
}
void draw ()
{
background (0, 0, 0);

int numberOfLines = 50;

for (int i = 0; i < numberOfLines; ++i)
{
  if (i % 3 == 0)
  {
  stroke (252, 0, 0);
  }

  else
  {
  stroke (84, 248, 4);
  }
  line (0, i * height / numberOfLines, i * width / numberOfLines, height);
}
}
