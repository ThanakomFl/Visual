PImage img;

void setup(){
  size(500,300);
  img = loadImage("city.jpg");
}

void draw(){
  background(0);
  image(img,0,0,mouseX,mouseY); //
}
