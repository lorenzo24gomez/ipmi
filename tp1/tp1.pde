PImage miImagen;
void setup(){
  size(800,400); 
  miImagen = loadImage("216371.jpg");
}

void draw(){
  background(0);
   image(miImagen, 0,0,400,400);
   
   noStroke();
   
   fill(#8B8B75);
    
    ellipse(499,50,70,70);
    rect(680,337,-200,40);
   
   fill(#B4B4A2);
   
   beginShape();
     vertex(538,200);
     vertex(586,111);
     vertex(641,75);
     vertex(682,115);
     vertex(690,169);
     vertex(622,173);
     vertex(610,200);
    endShape();
    ellipse(565,198,70,70);
    
    
    
   
    fill(#A7A791);
    
    ellipse(680,160,30,40);
    ellipse(634,87,45,20);
    
     beginShape();
     vertex(640,70);
     vertex(574,57);
     vertex(557,44);
     vertex(490,28);
     vertex(464,20);
     vertex(454,35);
     vertex(470,52);
     vertex(495,46);
     vertex(613,96);
    endShape();
    
    beginShape();
     vertex(560,217);
     vertex(612,260);
     vertex(660,260);
     vertex(612,193);
    endShape();
    
    rect(615,260,43,90);
    
    ellipse(700,110,70,50);
    
    
    
    fill(#8B8B75);
    
    beginShape();
     vertex(612,297);
     vertex(612,260);
     vertex(510,305);
     vertex(515,354);
     vertex(540,316);
    endShape();
    
    fill(#B4B4A2);
    
    beginShape();
     vertex(670,166);
     vertex(675,211);
     vertex(650,250);
     vertex(632,253);
     vertex(625,278);
     vertex(653,273);
     vertex(694,218);
     vertex(700,162);
    endShape();
    

   
   fill(#FA0303);
    text("x: " + mouseX + ", y:" + mouseY, mouseX, mouseY); 
}
