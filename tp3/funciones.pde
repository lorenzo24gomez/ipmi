//Funcion que dibuja los circulos

void dibujarCirculo(float x, float y, float z) {

  //Si se mantiene apretado cambia lugar de circulos
  if (mantenio) {
    translate(random(-3, 3), random(-3, 3));
    z = random(1, 25);
    circle(x, y, z);
  } else if (mousePressed && mouseButton == 39) {
    float dx = x - mouseX;
    float dy = y - mouseY;
    float d = distancia(x, y);
    float fuerza = juerza / d;
    x = x + (dx / d)*fuerza;
    y = y + (dy / d)*fuerza;
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
    juerza = 500;
    translate(0, 0);
    rotate(radians(0));
    giro = false;
    ang = 0;
  }
  if (key == 'q') {
    juerza = juerza-100;
  }
  //Radio mas grande
  if (key == 'e') {
    juerza = juerza+100;
  }
  if (key == 'g') {
    giro = true;
  }
}

void mousePressed() {
  println(mouseButton);
  if (mouseButton == 37) {
    mantenio=true;
  }
}

void mouseReleased() {
  mantenio = false;
}

void dibujarGrid(int d1, int d2) {
  for (int j = 0; j<16; j++) {
    float z = 16;
    for (int i = 0; i<14; i++) {
      float x = 410 +(29*i);
      float y = -1+(25.75*j);
      if (i < 6) {
        z = map(i, 0, 6, 17.5, 25);
      } else if (i > 7) {
        z = map(i, 8, 15, 25, 17.5);
      } else z = 27;
      // if (i<7) {
      //   z = (z+1.5);
      // } else {
      //   if (i>8) {
      //     z = (z-1.5);
      //   }
      // }
      dibujarCirculo(x - d1, y -d2, z);
    }
  }
}
