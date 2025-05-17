//tp2 variables y condicionales
//comision 3
//obra de arte electronico 
//nombre: aylin nicole gauna rossi 
//legajo:94200/1

//////////////////////////////////////////////////////

PFont fuente;
PImage imagen0;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;
PImage imagen5;
PImage imagen6;
PImage imagen7;

int estado; 

String texto0;
String texto1;
String texto2;
String texto3;
String texto4;
String texto5;
String texto6;
String texto7;


void setup (){
size (640,480);
fuente = loadFont ("Arial-BoldMT-22.vlw");
textFont (fuente);
textAlign (CENTER,CENTER);

//cargar imagenes 

imagen0 = loadImage ("imagen0.jpg");
imagen1 = loadImage ("imagen1.jpg");
imagen2 = loadImage ("imagen2.jpg");
imagen3 = loadImage ("imagen3.jpg");
imagen4 = loadImage ("imagen4.jpg");
imagen5 = loadImage ("imagen5.jpg");
imagen6 = loadImage ("imagen6.jpg");
imagen7 = loadImage ("imagen7.jpg");

//textos

texto0 = "PRECIONA [J] PARA COMENZAR"; 
texto1 = "El nombre de esta obra es Tree";
texto2 = "El autor que formo esta obra es \n Rafael Lozano Hermmer en el año 2020";
texto3 = "Speaking Willow es una escultura\n sonora con fomra de sauce llorón,\n de entre 5 y 6 metros de altura, \n que adorna la entrada del museo Planet Word";
texto4 = "La estructura fue fabricada en aluminio,\n es hueca,salvo por el tronco y las ramas,\n que elevan en su \n interior cables de dato que emergen\n de la estructura y cuelgan verticalmente, \n meciendose lentamente con el viento";
texto5 = "El árbol esta cubierto de enredaderas vivas,\n hiedra y otras plantas trepadoras \n perrennes que le aportan calidez, \n en sus ramas cuelgan cientos de altavoces\n en forma de campana que \n, al detectar la presencia de una persona debajo, \n reproducen grabaciones de voz en uno de \n más de 400 idiomas diferentes";
texto6 = "La obra utiliza el árbol de sauce como metáfora de la vida,\n la sabiduría y el crecimiento orgánico.\n Al caminar alrededor de Speaking Willow,\n los visitantes experimentan un viaje sonoro\n que refleja la conexión\n entre comunidades y culturas a través del lenguaje.\n La sincronización de la luz y el sonido recuerda al fotófono,\n el primer dispositivo que transmitió la voz humana \n mediante un haz de luz ";
texto7 = "VOLVER AL INICIO";

estado = 0;
}

void draw (){
  
  fill (255);
  println (frameCount);
  println (mouseX + "/" + mouseY);
  
//estados 

 if (estado==0){
   image (imagen0,0,0,640,480);
   text (texto0,320,420);
   
 }
 
 
if (estado==1){
  image (imagen1,0,0,640,480);
  fill (0);
  text (texto1,320,0-frameCount/-2);
  if (frameCount/60>=8){
    frameCount=0;
    estado=2;
  }
  }

if (estado==2){
  image (imagen2,0,0,640,480);
  fill (0);
  text (texto2,320,0-frameCount/-2);
  if (frameCount/60>=8){
    frameCount=0;
    estado=3;
  }
}

if (estado==3){
  image (imagen3,0,0,640,480);
  fill (0);
  text (texto3,320,0-frameCount/-2);
  if (frameCount/60>=8){
    frameCount=0;
    estado=4;
  }
}

if (estado==4){
  image (imagen4,0,0,640,480);
  fill (0);
  text (texto4,320,0-frameCount/-2);
  if (frameCount/60>=8){
    frameCount=0;
    estado=5;
  }
}

if (estado==5){
  image (imagen5,0,0,640,480);
  fill (0);
  text (texto5,320,0-frameCount/-2);
  if (frameCount/60>=8){
    frameCount=0;
    estado=6;
  }
}

if (estado==6){
  image (imagen6,0,0,640,480);
  fill (0);
  text (texto6,320,0-frameCount/-2);
  if (frameCount/120>=8){
    frameCount=0;
    estado=7;
  }
}

if (estado==7){
  image (imagen7,0,0,640,480);
  textSize (35);
  text (texto7,320,240);
  if (frameCount/60>=8){
    frameCount=0;
    estado=0;
  }
}
}

//clic de final

void mousePressed (){
  if (estado == 7 && mouseX>=255 && mouseX<=382 && mouseY>=255 && mouseY<=255){
    frameCount = 0;
    estado = 0;
  }
}

//clic de inicio

void keyPressed () {
  if (estado == 0 && key == 'j'){
    frameCount = 1;
    estado = 1; 
  }
}





   
  

  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
