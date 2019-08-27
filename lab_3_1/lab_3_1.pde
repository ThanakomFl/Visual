int x = 120 , y = 120 , w = 120 , h = 100;
boolean button = false;

void setup(){
  size(400,400);
}

void draw(){
  if(mouseX > x &&mouseX < x+w && mouseY > y && mouseY < y+h ){
    button = true;
  }else{
    button = false;
  }
  if(button){
    background(255,255,0);
    stroke(0);
  }else{
    background(0);
    stroke(255);
  }
  
  fill(175);
  rect(x,y,w,h);
}
