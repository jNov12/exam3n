void setup() {
  size(500, 500);
  background(255);
  drawPattern(200, 200);
}

void drawPattern(int patternWidth, int patternHeight) {
  int cols = width / patternWidth;
  int rows = height / patternHeight;

  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      float x = i * patternWidth + patternWidth / 2;
      float y = j * patternHeight + patternHeight / 2;

      int shapeType = int(random(4));
      float size = random(20, 100);
      color fillColor = color(random(255), random(255), random(255));

      fill(fillColor);
      noStroke();

      pushMatrix();
      translate(x, y);

      if (shapeType == 0) {
        drawCircle(size);
      } else if (shapeType == 1) {
        drawRectangle(size);
      } else if (shapeType == 2) {
        drawTriangle(size);
      } else {
        drawEllipse(size);
      }

      popMatrix();
    }
  }
}

void drawCircle(float size) {
  ellipse(0, 0, size, size);
}

void drawRectangle(float size) {
  rectMode(CENTER);
  rect(0, 0, size, size);
}

void drawTriangle(float size) {
  float h = size * sqrt(3) / 2;
  triangle(0, -h / 2, -size / 2, h / 2, size / 2, h / 2);
}

void drawEllipse(float size) {
  ellipse(0, 0, size * 1.5, size);
}
