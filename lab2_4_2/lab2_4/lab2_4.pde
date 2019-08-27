float x = 200 , y = 200 , w = 100 , h = 75 ;
float r,g,b,a = 0;
float last_0,last_1,last_2,last_3 = 0;
float lastcl_0,lastcl_1,lastcl_2,lastcl_3 = 255;
void setup(){
  size(400,400);
}

void draw(){
  
  lastcl_0 = constrain(lastcl_0,0,255);
  lastcl_1 = constrain(lastcl_1,0,255);
  lastcl_2 = constrain(lastcl_2,0,255);
  lastcl_3 = constrain(lastcl_3,0,255);
    
  background(0);
  stroke(255);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  if(mouseX > 0 && mouseX < width/2 && mouseY > 0 && mouseY < height/2){
    fill(255);
    rect(0,0,width/2,height/2);
    last_0 = 1;
    lastcl_0 = 255;
  }else if(mouseX > width/2 && mouseX < width && mouseY > height/2 && mouseY < height){
    fill(255);
    rect(width/2,height/2,width/2,height/2);
    last_1 = 1 ;
    lastcl_1 = 255;
  }else if(mouseX > 0 && mouseX < width/2 && mouseY > height/2 && mouseY < height){
    fill(255);
    rect(0,height/2,width/2,height/2);
    last_2 = 1;
    lastcl_2 = 255;
  }else if(mouseX > width/2 && mouseX < width && mouseY > 0 && mouseY < height/2){
    fill(255);
    rect(width/2,0,width/2,height/2);
    last_3 = 1;
    lastcl_3 = 255;
  }
  if(last_0 == 1) {
    fill(lastcl_0);
    rect(0,0,width/2,height/2);
    lastcl_0 -= 5;
  }
  if(last_1 == 1) {
    fill(lastcl_1);
    rect(width/2,height/2,width/2,height/2);
    lastcl_1 -= 5;
  }
  if(last_2 == 1) {
    fill(lastcl_2);
    rect(0,height/2,width/2,height/2);
    lastcl_2 -= 5;
  }
  if(last_3 == 1) {
    fill(lastcl_3);
    rect(width/2,0,width/2,height/2);
    lastcl_3 -= 5;
  }
  
    
}
