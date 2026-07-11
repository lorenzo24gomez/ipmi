//Funcion que dibuja los circulos

void dibujarCirculo(float x, float y, float z) {

  if (mousePressed && mouseButton == RIGHT) {
    float d = distancia(x, y);
    if (d< tam) {
      x = mouseX;
      y = mouseY;
    }
    circle(x, y, z);
  } else circle(x, y, z);
}

float distancia (float x, float y) {
  float d = dist(x, y, mouseX, mouseY);
  if (d < 1) d = 1;
  return d;
}

void keyPressed() {
  //Reset de estado del programa
  if (key == 'r') {
    tam = 100;
    translate(0, 0);
    rotate(radians(0));
    giro = false;
    ang = 0;
  }
  //circulo mas chico
  if (key == 'q') {
    tam =tam-10;
  }
  //circulo mas grande
  if (key == 'e') {
    tam =tam+10;
  }
}

void mouseClicked() {
  println(mouseButton);
  if (mouseButton == LEFT) {
    giro=true;
  }
}


void dibujarGrid(int d1, int d2) {
  for (int j = 0; j<16; j++) {
    float z = 16;
    for (int i = 0; i<14; i++) {
      float x = 410 +(29*i);
      float y = -1+(25.75*j);
      if (i < 6) {
        z = map(i, 0, 7, 17.5, 25);
      } else if (i >7) {
        z = map(i, 7, 15, 25, 17.5);
      } else z = 27;
      dibujarCirculo(x - d1, y -d2, z);
    }
  }
}
