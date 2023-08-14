int squareSize = 20; // Tamaño de los cuadrados
color buildingColor; // Color del edificio

void setup() {
  size(400, 400);
  buildingColor = color(100, 100, 100); // Color inicial del edificio (gris)
}

void draw() {
  background(255);
  drawBuilding();
}

void drawBuilding() {
  fill(buildingColor);
  int numColumns = width / squareSize;
  int numRows = height / squareSize;
  
  for (int col = 0; col < numColumns; col++) {
    for (int row = 0; row < numRows; row++) {
      float x = col * squareSize;
      float y = row * squareSize;
      rect(x, y, squareSize, squareSize);
    }
  }
}

void mouseClicked() {
  buildingColor = color(random(255), random(255), random(255)); // Cambiar el color al hacer clic
}
