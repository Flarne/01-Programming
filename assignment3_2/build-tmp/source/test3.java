import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class test3 extends PApplet {

int frame = 0;
float multiplier = 0.002f;
int numberOfPoints = 100;

public void setup()
{
  
  strokeWeight(5);
}

public void draw()
{
  background(198, 78, 140);
 
  for(int i = 0; i < 2 * PI * 100; i += 35)
  {
    
  stroke ((random(0, 255)), (random(0, 255)), (random(0, 255)));
  point(320 + cos((frame +i) * 0.01f) * 100, 240 + sin((frame +i) * 0.01f) * 100);
  }

  frame++;
}
  public void settings() {  size(640, 480); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "test3" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
