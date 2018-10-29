class Peleador{
  
  float x, y;
  int hp;
  int af;
  int an;
  int ar;
  int value;
  
  Peleador(float tempX, float tempY, int tempHp, int tempAf, int tempAn, int tempAr, int tempValue){
    x = tempX;
    y = tempY;
    hp = tempHp;
    af =tempAf;
    an = tempAn;
    ar = tempAr;
    value = tempValue;
  }
  
  void aguila(){
    noStroke();
    
    imageMode(CENTER);
    image(image5, 0, 0);

  }
  
  void jaguar(){
    noStroke();
    
    imageMode(CENTER);
    image(image4, 0, 0);
    
  }
  
  void feral(){
    noStroke();
    
    imageMode(CENTER);
    image(image3, 0, 0);
  }
  
  void papalotl(){
    noStroke();
    
    imageMode(CENTER);
    image(image2, 0, 0);
  }
  
  void tlamani(){
    noStroke();
    
    imageMode(CENTER);
    image(image1, 0, 0);
  }
  
  void display(){
  }
}
