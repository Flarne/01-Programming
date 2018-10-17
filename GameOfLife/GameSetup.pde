void GameSetup () {

  // Kalkylerar vårt koordinatsystem beroende på storlek och punktstorlek
  numberOfColumns = (int)Math.floor(width / cellSize);
  numberOfRows = (int)Math.floor(height / cellSize);

  // Initierar Vårt koordinatsystem
  cells = new GameObject[numberOfColumns][numberOfRows];

  // För varje rad
  for(int y = 0; y < numberOfRows; ++y) {
    // För varje kolumn i varje rad
    for(int x = 0; x < numberOfColumns; ++x) {
      // Skapar våra spelobjekt, multiplicerar med Cellstorleken för korrekt placering
      cells[x][y] = new GameObject(x, y, cellSize);

      //Randomiserar ut de levande cellerna som start
      if (random(0, 100) < fillPercentage) {
        cells[x][y].alive = true;
      }
    }
  }
}
