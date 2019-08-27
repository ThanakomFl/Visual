float x = 200 , y = 200 , w = 100 , h = 75 ;
float r,g,b,a;

void setup(){
  size(400,400);
}

void draw(){
  background(255);
  stroke(0);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  if(mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height/2){
    fill(0); //<>//
    rect(0,0,width/2,height/2);
  }else if(mouseX > width/2 && mouseX < width && mouseY > height/2 && mouseY < height){
    fill(0);
    rect(width/2,height/2,width/2,height/2);
  }else if(mouseX > 0 && mouseX < width/2 && mouseY > height/2 && mouseY < height){
    fill(0);
    rect(0,height/2,width/2,height/2);
  }else if(mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height/2){
    fill(0);
    rect(width/2,0,width/2,height/2);
  }
  
}

void mousePressed() {
  print("asdasd");
  r = random(150,255);
  g = random(150,255);
  b = random(150,255);
  a = random(150,255);
}
