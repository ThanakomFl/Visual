PFont f;
float posy;
String t1 = "Lorem Ipsum \nLorem Ipsum \nLorem Ipsum \nLorem Ipsum \n";
float t =20;
float s = 50;
void setup(){
  size(500,500,P3D);
  f = createFont("Arial",20,true);
  posy = height;
}

void draw(){
  background(255);
  
  textFont(f);
  fill(0);
  textSize(s);
  textAlign(CENTER); // CENTER , LEFT , RIGHT
    rotateX(0.8);
  text(t1,width/2,posy);
  posy = posy - 4;

  if(s > 10){
  s = s - 0.02;
}}
