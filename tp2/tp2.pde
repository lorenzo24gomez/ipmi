/*Buenas tardes, le dejo mi bella obra.
 Apelo a su sentido del humor al momento de apreciar esta
 presentacion ya que la idea es que sea comica.
 Le envio un afectuoso saludo*/


PFont miFuente; //La mas fea que encontre
int botX = 320-50;
int botY = 240-20;
int botTamX = 100;
int botTamY = 40;
String botonTxt = "Start";
boolean  presOn = false;
int parte = 0;
int iniTiempo = 0;
int text1 = 680;
PImage prin;
PImage plan;
PImage rey;
PImage fox;
PImage snake;
PImage titulo;
PImage prin2;

int posXDra = 320;
int posYDra = 150;

void setup() {
  size(640, 480);
  miFuente = loadFont("SegoeScript-48.vlw");
  prin  = loadImage("principe.png");
  plan = loadImage("Planeta.jpg");
  rey = loadImage("rey.png");
  fox = loadImage("fox.jpg");
  snake = loadImage("snake.jpg");
  titulo = loadImage("Titulo.png");
  prin2 = loadImage("prin2.png");
}

void draw() {
  background(#EAFF76);
  textFont(miFuente, 30);
  if (!presOn) {
    image(titulo, 0, 50, 640, 200);
    image(prin2, posXDra, posYDra, 300, 300);
    botonATR(botX, botY, botTamX, botTamY, botonTxt);
  }
  if (presOn) {
    iniPres();
  }
}


void mousePressed() {
  if (mouseX >= botX && mouseX < (botX + botTamX) &&
    mouseY>= botY && mouseY < (botY + botTamY) && !presOn) {
    presOn = true;
    iniTiempo = frameCount;
    parte = 1;
  }
}

//Permite mover el avion de la pantalla inicial

void mouseDragged() {
  if (!presOn) {
    posXDra = mouseX;
    posYDra = mouseY;
  }
}

void mouseReleased() {
  posXDra = 320;
  posYDra = 150;
}
