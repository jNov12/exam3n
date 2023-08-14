void setup() {
  size(400, 400);
  background(255);
}

void draw() {
  // No se necesita draw() en este ejemplo
}

void keyPressed() {
  float circleSize = random(10, 50); // Tamaño aleatorio del círculo
  color circleColor = color(random(255), random(255), random(255)); // Color aleatorio
  
  fill(circleColor);
  
  // Generar ubicaciones aleatorias dentro del cuadro
  float x = random(50, width - 50); // Limitar dentro del ancho del cuadro
  float y = random(50, height - 50); // Limitar dentro de la altura del cuadro
  
  // Dibujar el círculo en la ubicación aleatoria
  ellipse(x, y, circleSize, circleSize);
}
