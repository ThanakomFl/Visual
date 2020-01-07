PImage img;

void setup(){
  size(500,500);
  img = loadImage("flower.jpg");
  image(img,0,0,width,height);
}
void draw(){
  if(keyPressed){
    filter(BLUR,1);
  }
}
