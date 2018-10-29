class Pantalla{

  float xt, yt;
  String t;
  float ts;
  
  Pantalla(String tempT, float tempXt, float tempYt, float tempTs){
    t = tempT;
    xt = tempXt;
    yt = tempYt;
    ts = tempTs;
  }

  void display(){
    noStroke();
    textSize(ts);
    fill(72, 56, 8);
    text(t, xt, yt);
  }
  
}
