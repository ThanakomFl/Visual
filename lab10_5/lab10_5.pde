PFont f;
float posx1,posx2 ;
String t1 = "---- 1 ---";
String t2 = "---------2------";
float t =0;
void setup(){
  size(500,500);
  f = createFont("Arial",20,true);
  posx1 = width/2;
}

void draw(){
  background(255);

  textFont(f);
  fill(0);
  
  textAlign(CENTER); // CENTER , LEFT , RIGHT
  translate(width/2,height/2);
    rotate(t);
  text(t1,0,0);
  t = t + 0.01;
}
