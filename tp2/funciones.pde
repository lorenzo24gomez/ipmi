

/*Funcion para crear botones, cambia de color cuando se pasa
 por encima por el mouse*/
void botonATR(int posX, int posY, int tamX, int tamY, String nom) {
  if (mouseX >= posX && mouseX < (posX + tamX) &&
    mouseY>= posY && mouseY < (posY + tamY)) {
    dibuBoton(posX, posY, tamX, tamY, nom, #FF6A6A );
  } else {
    dibuBoton(posX, posY, tamX, tamY, nom, #FF0000);
  }
}

void dibuBoton(int posX, int posY, int tamX, int tamY, String nom, color col) {
  fill(col);
  noStroke();
  rect(posX, posY, tamX, tamY, 28);
  fill(#030303);
  textSize(20);
  textAlign(CENTER, CENTER);
  text(nom, (posX + tamX/2), (posY + tamY/2));
}


// Creando un reloj de frames para crear delays
boolean pasoTiempo(int sec) {
  int tiemFrames = sec * 60;

  int tiempoQuePaso = frameCount - iniTiempo;

  if (tiempoQuePaso >= tiemFrames) {
    iniTiempo = frameCount;
    return true;
  }
  return false;
}

//Cuerpo de la presentacion
void iniPres() {

  if (parte == 1) {
    textAlign(CENTER, CENTER);
    image(prin, 0, 0);
    fill(#02F53C);
    if (text1 > 20) {
      text("Un aviador se queda atrapado en el desierto del Sahara tras sufrir una avería. Allí conoce por sorpresa al Principito, un niño misterioso que le pide que le dibuje un cordero, recordándole al piloto la imaginación que los adultos suelen perder", text1, 20, 600, 440);
      text1 -= 3;
    } else text("Un aviador se queda atrapado en el desierto del Sahara tras sufrir una avería. Allí conoce por sorpresa al Principito, un niño misterioso que le pide que le dibuje un cordero, recordándole al piloto la imaginación que los adultos suelen perder", 20, 20, 600, 440);

    if (pasoTiempo(15)) {
      parte ++;
      text1 = 680;
    }
  } else if (parte == 2) {
    image(plan, 200, 150);
    fill(#02F53C);
    if (text1 > 20) {
      text("El niño relata que viaja desde el Asteroide B-612. En su pequeño planeta cuidaba de tres volcanes y de una rosa hermosa pero muy orgullosa. Confundido por las exigencias y el drama de su amada flor, el Principito decidió marcharse para explorar el universo.", text1, 20, 600, 440);
      text1 -= 3;
    } else text("El niño relata que viaja desde el Asteroide B-612. En su pequeño planeta cuidaba de tres volcanes y de una rosa hermosa pero muy orgullosa. Confundido por las exigencias y el drama de su amada flor, el Principito decidió marcharse para explorar el universo.", 20, 20, 600, 440);

    if (pasoTiempo(15)) {
      parte ++;
      text1 = -640;
    }
  } else if (parte == 3) {
    image(rey, 42, 73);
    fill(#02F53C);
    if (text1 < 20) {
      text("Antes de llegar a la Tierra, visita varios asteroides habitados por adultos solitarios: un rey, un vanidoso, un bebedor, un hombre de negocios, un farolero y un geógrafo. Al ver sus absurdas obsesiones, el niño concluye que los adultos son personas muy extrañas.", text1, 20, 600, 440);
      text1 += 3;
    } else text("Antes de llegar a la Tierra, visita varios asteroides habitados por adultos solitarios: un rey, un vanidoso, un bebedor, un hombre de negocios, un farolero y un geógrafo. Al ver sus absurdas obsesiones, el niño concluye que los adultos son personas muy extrañas.", 20, 20, 600, 440);

    if (pasoTiempo(15)) {
      parte ++;
      text1 = 680;
    }
  } else if (parte == 4) {
    image(fox, 400, 150);
    fill(#02F53C);
    if (text1 > 20) {
      text("Al llegar a la Tierra, conoce a un zorro que le pide ser domesticado. A través de su amistad, el zorro le enseña el secreto de la vida: que el tiempo que dedicó a su rosa la hace única, y que lo esencial es invisible a los ojos.", text1, 20, 600, 440);
      text1 -= 3;
    } else text("Al llegar a la Tierra, conoce a un zorro que le pide ser domesticado. A través de su amistad, el zorro le enseña el secreto de la vida: que el tiempo que dedicó a su rosa la hace única, y que lo esencial es invisible a los ojos.", 20, 20, 600, 440);

    if (pasoTiempo(15)) {
      parte ++;
      text1 = 680;
    }
  } else if (parte == 5) {
    image(snake, 0, 0);
    fill(#02F53C);
    if (text1 > 20) {
      text("Entendiendo que debe volver con su rosa, el Principito acude a una serpiente para que su mordedura lo libere de su cuerpo terrenal. Se despide del triste aviador prometiéndole que, al mirar las estrellas, escuchará su risa, y desaparece en el desierto.", text1, 20, 600, 440);
      text1 -= 3;
    } else text("Entendiendo que debe volver con su rosa, el Principito acude a una serpiente para que su mordedura lo libere de su cuerpo terrenal. Se despide del triste aviador prometiéndole que, al mirar las estrellas, escuchará su risa, y desaparece en el desierto.", 20, 20, 600, 440);

    if (pasoTiempo(15)) {
      parte ++;
      text1 = 680;
    }
  } else if (parte == 6) {

    background(#000000);
    presOn = false;
    parte = 0;
    botonTxt = "Reset";
    text1 = 680;
  }
}
