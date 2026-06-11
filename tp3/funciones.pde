//Funcion que dibuja los circulos

void dibujarCirculo(float x, float y, float z, float lol) {
  if (apretao) {
    fill(whatacolor);
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
    fill(#FFFFFF, lol);
    circle(x, y, z);
  } else {
    fill(#FFFFFF);
    circle(x, y, z);
  }
}

float distancia (float x, float y) {
  float d = dist(x, y, mouseX, mouseY);
  if (d < 1) d = 1;
  return d;
}

void keyPressed() {
  //Radio mas chico
  if (key == '1') {
    crazy++;
  }
  //Radio mas grande
  if (key == '2' && crazy > 0) {
    crazy--;
  }
  //Reset de estado del programa
  if (key == 'r') {
    apretao = false;
    juerza = 500;
  }
  //Color del radio a azul
  if (key == 'b') {
    whatacolor = color(0, 0, 255);
  }
  if (key == 'q') {
    juerza = juerza-100;
  }
  //Radio mas grande
  if (key == 'e' && crazy > 0) {
    juerza = juerza+100;
  }
}

void mousePressed() {
  println(mouseButton);
  if (mouseButton == 37) {
    whatacolor = color(0, 255, 0);
    apretao = true;
    mantenio=true;
  }
}

void mouseReleased() {
  whatacolor = color(255, 0, 0);
  mantenio = false;
}
