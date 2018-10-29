Pantalla inicio;
Pantalla tutorial;
Pantalla seleccion;
Pantalla seleccion2;
Pantalla combate;
Pantalla dcombate;

Peleador tlamani;
Peleador papalotl;
Peleador feral;
Peleador jaguar;
Peleador aguila;
Peleador tlamanib;
Peleador papalotlb;
Peleador feralb;
Peleador jaguarb;
Peleador aguilab;

int P = 0;
int J1 = 0;
int J2 = 0;

int J1_HP = 300;
int J2_HP = 300;
int J1_A = 7;
int J2_A = 7;

PFont font1;

PImage image1;
PImage image2;
PImage image3;
PImage image4;
PImage image5;

PImage pantalla1;
PImage pantalla2;
PImage pantalla3;
PImage pantalla4;
PImage pantalla5;

void setup(){
  size(720, 720);
  
  inicio = new Pantalla("ÁANTENÍ", 130, 360, 100);
  tutorial = new Pantalla("Tutorial", 245, 65, 50);
  seleccion = new Pantalla("Jugador 1 selecciona \nun personaje", 75, 50, 50);
  seleccion2 = new Pantalla("Jugador 2 selecciona \nun personaje", 75, 50, 50);
  combate = new Pantalla("VS.", 330, 70, 50);
  dcombate = new Pantalla("FIN DE LA PARTIDA", 7, 100, 70);
  
  tlamani = new Peleador(0, 0, 400, 5, 4, 3, 1);
  papalotl = new Peleador(0, 0, 400, 5, 4, 3, 2);
  feral = new Peleador(0, 0, 400, 5, 4, 3, 3);
  jaguar = new Peleador(0, 0, 400, 5, 4, 3, 4);
  aguila = new Peleador(0, 0, 400, 5, 4, 3, 5);
  
  tlamanib = new Peleador(0, 0, 400, 5, 4, 3, 1);
  papalotlb = new Peleador(0, 0, 400, 5, 4, 3, 2);
  feralb = new Peleador(0, 0, 400, 5, 4, 3, 3);
  jaguarb = new Peleador(0, 0, 400, 5, 4, 3, 4);
  aguilab = new Peleador(0, 0, 400, 5, 4, 3, 5);
  
  font1 = loadFont("Diary-of-an-8-bit-mage-125.vlw");
  
  image1 = loadImage("Tlamani.png");
  image2 = loadImage("Papalotl.png");
  image3 = loadImage("Chanec.png");
  image4 = loadImage("Ocelopilli.png");
  image5 = loadImage("Cuauhpilli.png");
  
  pantalla1 = loadImage("PantallaTitulo.png");
  pantalla2 = loadImage("PantallaSeleccion.png");
  pantalla3 = loadImage("PantallaTutorial.png");
  pantalla4 = loadImage("PantallaCombate.png");
  pantalla5 = loadImage("PantallaFinal.png");
}

void draw(){
  
  background(255);
  textFont(font1);
  
  inicio.display();
  textSize(15);
  text("Presiona M para ir a la selección de personajes \nPresiona N para ir al tutorial", 105, 595);
  
  if(keyPressed){
    if(key == 'm' || key == 'M'){
      P = 1;
    }
    else if(key == 'n' || key == 'N'){
      P = -1;
    }
  }
  
  if(P == 0){
    //Inicio
    image(pantalla1, 0, 0);
    inicio.display();
    textSize(15);
    text("Presiona M para ir a la selección de personajes \nPresiona N para ir al tutorial", 105, 595);
  }
  
  else if(P == 1){
    //SeleccionPersonajes
    image(pantalla2, 360, 360);
    seleccion.display();
      
      pushMatrix();
      translate(110, 300);
      tlamani.tlamani();
      popMatrix();
      
      pushMatrix();
      translate(370, 300);
      papalotl.papalotl();
      popMatrix();
      
      pushMatrix();
      translate(600, 300);
      feral.feral();
      popMatrix();
      
      pushMatrix();
      translate(245, 580);
      jaguar.jaguar();
      popMatrix();
      
      pushMatrix();
      translate(510, 580);
      aguila.aguila();
      popMatrix();
      
      textSize(14);
      text("Guerrero Tlamani - Q", 30, 425);
      text("Guerrero Papalotl - W", 285, 425);
      text("Guerrero Chanec - E", 530, 425);
      text("Guerrero Ocelopilli - R", 155, 700);
      text("Guerrero Cuauhpilli - T", 415, 700);
      
      if(keyPressed){
        if(key == 'q' || key == 'Q'){
          J1 = 1;
          J2 = 0;
        }
        else if(key == 'w' || key == 'W'){
          J1 = 2;
          J2 = 0;
        }
        else if(key == 'e' || key == 'E'){
          J1 = 3;
          J2 = 0;
        }
        else if(key == 'r' || key == 'R'){
          J1 = 4;
          J2 = 0;
        }
        else if(key == 't' || key == 'T'){
          J1 = 5;
          J2 = 0;
        }
      }
      
      if(J1 != 0){
        image(pantalla2, 360, 360);
        seleccion2.display();
      
        pushMatrix();
        translate(110, 300);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        translate(370, 300);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        translate(600, 300);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        translate(245, 580);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        translate(510, 580);
        aguila.aguila();
        popMatrix();
        
        textSize(14);
        text("Guerrero Tlamani - Z", 30, 425);
        text("Guerrero Papalotl - X", 285, 425);
        text("Guerrero Chanec - C", 530, 425);
        text("Guerrero Ocelopilli - V", 155, 700);
        text("Guerrero Cuauhpilli - B", 415, 700);
        
        if(keyPressed){
        if(key == 'z' || key == 'Z'){
          J2 = 1;
        }
        else if(key == 'x' || key == 'X'){
          J2 = 2;
        }
        else if(key == 'c' || key == 'C'){
          J2 = 3;
        }
        else if(key == 'v' || key == 'V'){
          J2 = 4;
        }
        else if(key == 'b' || key == 'B'){
          J2 = 5;
        }
      }
    }
  }
  
  else if(P == -1){
    image(pantalla3, 0, 0);
    tutorial.display();
    textSize(30);
    text("Jugador 1: \nGolpea con A", 40, 300);
    text("Jugador 2: \nGolpea con J", 480, 300);
    }
    
    else if(P == 2){
      dcombate.display();
    }
  
  if(J1 != 0 && J2 != 0){
    //Batalla
    image(pantalla4, 360, 360);
    combate.display();
    
    if(J1 == 1 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        tlamani.tlamani();
        popMatrix();
        
         tlamanib.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +tlamanib.hp); 
      }
      
      if(J1 == 1 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 1 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 1 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 1 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        tlamani.tlamani();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         tlamani.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +tlamani.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 2 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 2 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        papalotl.papalotl();
        popMatrix();
        
        papalotlb.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +papalotlb.hp);
        
      }
      
      if(J1 == 2 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 2 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 2 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        papalotl.papalotl();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         papalotl.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +papalotl.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 3 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 3 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 3 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        feral.feral();
        popMatrix();
        
        feralb.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +feralb.hp);
        
      }
      
      if(J1 == 3 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 3 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        feral.feral();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         feral.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +feral.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 4 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 4 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 4 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 4 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        jaguar.jaguar();
        popMatrix();
        
        jaguarb.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +jaguarb.hp);
        
      }
      
      if(J1 == 4 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        jaguar.jaguar();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        aguila.aguila();
        popMatrix();
        
        aguila.hp = J2_HP;
         jaguar.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +jaguar.hp);
          println("J2 =" +aguila.hp);
        
      }
      
      if(J1 == 5 && J2 == 1){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        tlamani.tlamani();
        popMatrix();
        
        tlamani.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +tlamani.hp);
        
      }
      
      if(J1 == 5 && J2 == 2){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        papalotl.papalotl();
        popMatrix();
        
        papalotl.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +papalotl.hp);
        
      }
      
      if(J1 == 5 && J2 == 3){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        feral.feral();
        popMatrix();
        
        feral.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +feral.hp);
        
      }
      
      if(J1 == 5 && J2 == 4){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        jaguar.jaguar();
        popMatrix();
        
        jaguar.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +jaguar.hp);
        
      }
      
      if(J1 == 5 && J2 == 5){
        pushMatrix();
        scale(2);
        translate(100, 220);
        scale(-1, 1);
        aguila.aguila();
        popMatrix();
        
        pushMatrix();
        scale(2);
        translate(280, 220);
        aguila.aguila();
        popMatrix();
        
        aguilab.hp = J2_HP;
         aguila.hp = J1_HP;
        
          if(keyPressed){
            if(key == 'a' || key == 'A'){
              
              J2_HP = J2_HP - J1_A;
            }
            else if(key == 'j' || key == 'J'){
              
              J1_HP = J1_HP - J2_A;
            }
          }
          
          println("J1 =" +aguila.hp);
          println("J2 =" +aguilab.hp);
        
      }
  }
  
  if(J1_HP <= 0 || J2_HP <= 0){
    
    image(pantalla5, 360, 360);
    dcombate.display();
    textSize(15);
    text("Presiona P para volver al inicio", 7, 120);
    }
    
}
