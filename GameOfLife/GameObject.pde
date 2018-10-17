public class GameObject {

  float x, y; // Håller koll på vår position
  float size; // Vår storlek

  // Håller koll på om vi lever
  boolean alive = false;
  int numberLivingNeighbours;
  int generationAge;
  //int fade = 255;

  // Konstruktorn
  public GameObject (float x, float y, float size) {
    // Våra X, Y och size är samma som de X, Y och size som kommer in
    this.x = x * size;
    this.y = y * size;
    this.size = size;
  }

  void draw() {
    if (alive) {
      //Om vi lever, ritaspunkten ut och blir grön om det är 3 grannar
      if (numberLivingNeighbours == 3) {
        r = changeRedColor + generationFrame * 10;
        g = 0;
        b = changeBlueColor + generationFrame * 10;
        fill (r, g, b);
        ellipse(x, y, size, size);
      }
      // Om vi lever, ritas punkten ut och blir röd om det är 2 grannar
      if (numberLivingNeighbours == 2) {
        r = 0;
        g = changeGreenColor + generationFrame * 10;
        b = changeBlueColor + generationFrame * 10;
        fill (r, g, b);
        ellipse(x, y, size, size);
      }
    }
  }

  void redIfTwoNeighbours () {

  }
}
