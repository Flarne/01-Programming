GameObject cells[][]; // Vår spelplan ritas ut som koordinatsystem
float cellSize = 10; // Storlek på cellerna
int numberOfColumns;
int numberOfRows;
int fillPercentage = 15; // Ritar ut antalet celler (15 % ) av ytan
int generationFrame = 0;
int populationFrame = 0;
int r, g, b;
int changeRedColor;
int changeGreenColor;
int changeBlueColor;

void setup() {
  size(512, 512); // Sätter storleken på spelplanen
  background(0); // Bakgrundsfärgen
  ellipseMode(LEFT); // Sätter rätt placering på våra punkter så de stannar i ramen
  frameRate(5); // för att hinna se vad som händer
  GameSetup ();
}

void draw() {
  gameBackground ();
  drawAliveCells ();
  checkAliveCells ();
  checkRules ();
  numberGenerations ();
  numberBorn ();

  generationFrame++;
}

void gameBackground () {
  background(0); // Bakgrundsfärgen
}

void drawAliveCells () {
  // För varje rad
  for(int y = 0; y < numberOfRows; ++y) {
    // För varje kolumn på varje rad
    for(int x = 0; x < numberOfColumns; ++x) {
      // Rita ut nuvarande punkt
      cells[x][y].draw();
    }
  }
}

void checkAliveCells () {
  // Kollar antal levande på varje rad
  for(int y = 0; y < numberOfRows; ++y) {
    // Kollar antal levande i varje kolumn på varje rad
    for(int x = 0; x < numberOfColumns; ++x) {
      cells[x][y].numberLivingNeighbours = checkNeighbour(x, y);
    }
  }
}

void checkRules () {
  // Kollar reglerna för varje rad
  for(int y = 0; y < numberOfRows; ++y) {
    // Kollar reglerna för varje kolumn på varje rad
    for(int x = 0; x < numberOfColumns; ++x) {
      cells[x][y].alive = checkIfAlive(x, y);
    }
  }
}
// prints out number of generations
void numberGenerations () {
  textSize (10);
  fill (0, 0, 255);
  text ("Generations: " + generationFrame, 20, 480);
}
// prints out number of born cells
void numberBorn () {
  textSize (10);
  fill (0, 0, 255);
  text ("Total born: " + populationFrame, 20, 500);
}

// Funktion som kollar hur många grannar respektive cell har
public int checkNeighbour (int x, int y) {
  int aliveNeighbours = 0;

  // Kollar Hur många levande grannar i x-led
  for (int i = - 1; i <= 1; i++) {
    // Kollar Kanterna på sidorna
    if (x + i >= 0 && x + i < numberOfColumns) {
      // Kollar hur många levande grannar i y-led
      for (int j = - 1; j <= 1; j++) {
        // kollar kanterna uppe och nere
        if (y + j >= 0 && y + j < numberOfRows) {
          // Kollar om det är Origo och hoppar över den
          if (cells[x + i][y + j].alive && !(i == 0 && j == 0)) {
            // Om det är Origo plussas aliveNeighbours med ett och går till nästa
            aliveNeighbours++;
          }
        }
      }
    }
  }
  // Sparar och skickar levande till draw
  return aliveNeighbours;
}

// Funktion För spelregler som kollar huruvida cellen är levande till nästa generation
public boolean checkIfAlive(int x, int y) {

  // Kollar om cellen har 0 eller 1 granne dvs död pga underbefolkning
  if (cells[x][y].numberLivingNeighbours < 2) {
    return false;
  }
  // Kollar om cellen har 3 eller mer grannar dvs död pga överbefolkning
  else if (cells[x][y].numberLivingNeighbours > 3) {
    return false;
  }
  // Kollar om cellen lever, då lever den till nästa generation
  else if (cells[x][y].alive) {
    return true;
  }
  // Kollar om en död cell har 3 grannar och då produceras en ny cell
  if (cells[x][y].numberLivingNeighbours == 3 && ! cells[x][y].alive) {
    populationFrame++;
    return true;
  }
  else {
    return false;
  }
}
