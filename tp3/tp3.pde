//Video = https://youtu.be/8Btavf7sfeY

// INSTRUCCIONES
//  -Click izquierdo hace que la pantalla gire
//  -Mantener click derecho hace que los circulos a una distancia del mouse sigan al mouse
//  -q y e para cambiar el tamaño de la distancia del click derecho
//  -r para reset del programa


PImage miImagen;
//Boolean que informa si esta girando el canvas
boolean giro = false;
//Tamaño del la distancia en la que los circulos siguen al mouse
float tam = 100;
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
