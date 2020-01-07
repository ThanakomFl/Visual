PFont f,z;

void setup(){
  size(300,300);
  f = createFont("Georgia",5,true);
  z = createFont("Urban Defender" , 30 , true);
}

void draw(){
  background(255);
  textFont(f);
  fill(255,0,0);
  textSize(30);
  text("CPE CMU",20,100); // text x y 
  textFont(z);
  fill(0,255,0);
  text("asdsadasd",20,200);
}
