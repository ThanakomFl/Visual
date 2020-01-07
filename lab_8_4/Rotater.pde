class Rotater{
  float wid,hei,rou,si,r;
  float red,green,blue,alp;
  Rotater(float w , float h , float ro, float s){
   wid = w;
   hei = h;
   rou = ro;
   si = s;
   r = 0;
   red = random(255);
  green = random(255);
   blue = random(255);
  alp = random(255);
  }
  
  void spin(){
    r = r + rou;
  }
  
  void display(){
    pushMatrix();
    translate(wid,hei);
    rectMode(CENTER);
    noStroke();
    fill(red,green,blue,alp);
    rotateX(r);
    rotateY(r);
    rotateZ(r);
    rect(0,0,si,si);
    popMatrix();
  }
}
