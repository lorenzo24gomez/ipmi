// INSTRUCCIONES
//  -Click izquierdo para iniciar
//  -Mantener click izquierdo para modo sin control
//  -1 y 2 para cambiar el tamaño del radio de color
//  -b para cambiar el radio a color azul
//  -Mantener click derecho para alejar círculos del mouse
//  -q y e para cambiar la distancia del círculo
//  -r para reset del programa


PImage miImagen;
//Tamano del radio de color(dist)
float crazy = 3;
//Boolean para resetear es estado del programa
boolean apretao = false;
//Boolean que dice si el mouse esta siendo apretado
boolean mantenio = false;
//Color del radio
color whatacolor = color(255, 0, 0);
//Fuerza de alejamiento
float juerza = 500;

void setup() {
  size(800, 400);
  miImagen = loadImage("15.jpg");
}

void draw() {
  background(0);
  image(miImagen, 0, 0, 400, 400);
  noStroke();
  fill(#FFFFFF);
  //For anidado para dibujar circulos
  for (int j = 0; j<16; j++) {
    float z = 16;
    for (int i = 0; i<14; i++) {
      if (i<7) {
        z = (z+1.5);
      } else {
        if (i>8) {
          z = (z-1.5);
        }
      }
      float x = 410 +(28*i);
      float y = -1+(25.85*j);
      float lol = dist(x, y, mouseX, mouseY)*crazy;
      dibujarCirculo(x, y, z, lol);
    }
  }

  fill(255, 0, 0);
  text("x: " + mouseX + ", y:" + mouseY, mouseX, mouseY);
}
