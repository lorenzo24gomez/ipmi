// INSTRUCCIONES
//  -Mantener click izquierdo para modo sin control
//  -Mantener click derecho para alejar círculos del mouse
//  -q y e para cambiar la distancia del círculo
//  -r para reset del programa
//  -g para que giren todos los circulos


PImage miImagen;
//Boolean que dice si el mouse esta siendo apretado
boolean mantenio = false;
//Boolean que informa si esta girando el canvas
boolean giro = false;
//Fuerza de alejamiento
float juerza = 500;
//Cantidad de grados que gira el canvas
float ang = 0;

void setup() {
  size(800, 400);
  miImagen = loadImage("15.jpg");
}

void draw() {
  background(0);
  image(miImagen, 0, 0, 400, 400);
  noStroke();
  fill(#FFFFFF);

  if (giro) {
    pushMatrix();
    translate(600, 200);
    rotate(radians(0 + ang));
    dibujarGrid(600, 200);
    popMatrix();
    ang += 1;
  } else dibujarGrid(0, 0);

  fill(255, 0, 0);
  text("x: " + mouseX + ", y:" + mouseY, mouseX, mouseY);
}
