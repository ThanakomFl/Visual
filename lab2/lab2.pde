float x_1,x_2 ;
float y ;
float r,g,b,a;
float s;

void setup(){
  size(600,600);
  background(255);
}

void draw(){
  s = random(10,150);
  x_1 = random(0,width/2);
  x_2 = random(width/2,width);
  y = random(0,height);
  r = random(150,255);
  g = random(0,10);
  b = random(10,50);
  a = random(150,255);
  stroke(255);
  fill(r,g,b,a);
  ellipse(x_1-10,y,s,s);
  r = random(0,10);
  g = random(254,255);
  b = random(0,255);
  a = random(0,255);
  fill(r,g,b,a);
  rect(x_2+10,y,s,s);
}
