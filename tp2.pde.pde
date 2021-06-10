import ddf.minim.*;

Minim minim;
AudioPlayer player;

PImage img;
PFont font;

void setup(){
  size(400,400);
  //sonido
  minim = new Minim(this);
  player = minim.loadFile("chopin-nocturne-13-op-48-no-1.wav");
//fondo y texto
  img = loadImage("La-Oveja-Negra.jpg"); 
 
 font = loadFont("Cambria-Bold-20.vlw");
 textFont(font);
}

void draw(){
  //sonido
  if ( player.isPlaying() ){
    textSize(19);
    text("presiona una tecla para Detener", 10, 20);
  }
  else
  {
    textSize(19);
    text("Presiona una tecla para Comenzar Créditos", 10, 20);
  }
}

void keyPressed(){
  if (player.isPlaying() )
  {
    player.pause();
  }
  else 
  {
    player.play();
  }

//imagen..
 image( img, 0, 0, 400, 400);
 
 fill(0);
 textSize(40);
 text("La Oveja Negra",45.5, 100);
 
 textSize(35);
 text("Autor", 25,350);
 
 textSize(20);
 text("Carlo Frabetti", 20, 365);
 
 textSize(35);
 text("Música",200, 350);
 
 textSize(20);
 text("Chopin-Nocturne",199.9,365);
 
 textSize(20);
 text("#13 Op. 48 No.1",199.9,380); 
 }
  
 
