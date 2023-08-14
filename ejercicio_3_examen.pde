float x; // Posición x del círculo
float y; // Posición y del círculo
float speedY; // Velocidad en el eje y

void setup() {
  size(400, 400);
  x = width / 2; // Inicializar en el centro en x
  y = 0; // Inicializar en la parte superior en y
  speedY = 2; // Velocidad inicial en y
}

void draw() {
  background(255);
  
  // Actualizar la posición en el eje y
  y += speedY;
  
  // Reiniciar posición si llega al borde inferior
  if (y > height) {
    y = 0;
  }
  
  // Dibujar el círculo en su posición actual
  fill(0, 0, 255); // Color azul
  ellipse(x, y, 50, 50);
}
