PFont f,z;
float x,y;
String pos;
float nx,ny;
void setup(){
  size(600,600);
  f = createFont("Georgia",5,true);
  z = createFont("Urban Defender" , 30 , true);
  x = width/2;
  y = height/2;
  nx = 0;
  ny = 0;
}

void draw(){
  background(#45F03A);
  textFont(f);
  fill(0);
  textSize(15);
  pos = "("+int(x)+","+int(y)+")";
  text(pos,x-5,y-10); // text x y 
  circle(x,y,10);
  x = noise(nx) * width;
  y = noise(ny) * height;
  text("("+int(mouseX)+","+int(mouseY)+")",mouseX-5,mouseY-10);
  
  nx = nx +0.01;
  ny = ny + 0.02;
}
