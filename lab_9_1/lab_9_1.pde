PImage img;

void setup(){
  size(500,300);
  img = loadImage('city.png');
}

void draw(){
  background(0);
  image(img,0,0);
}
