PImage img;
float x,y;
float rot;

void setup(){
  size(500,300);
  img = loadImage("head.png");
  x = 0;
  y = height/2;
  rot = 0;
}

void draw(){
  background(255);
  translate(x,y);
  rotate(rot);
  image(img,0,0,100,150);
  
  rot += 0.01;
  x += 0.6;
  if(x > width+img.height){
    x = 0;
  }
}
