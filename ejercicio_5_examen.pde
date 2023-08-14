void setup() {
  size(400, 400);
  background(220);
}

void draw() {
  //  posición actual
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void mousePressed() {
  // Limpia el fondo 
  background(220);
}
