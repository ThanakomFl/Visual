
float x = 200 , y = 200 , w = 100 , h = 75 ;
float r,g,b,a = 0;
float last_0,last_1,last_2,last_3 = 0;
float lastcl_0,lastcl_1,lastcl_2,lastcl_3 = 255;
float dista ;
void setup(){
  size(300,300);
}

void draw(){
  
  lastcl_0 = constrain(lastcl_0,0,255);
  lastcl_1 = constrain(lastcl_1,0,255);
  lastcl_2 = constrain(lastcl_2,0,255);
  lastcl_3 = constrain(lastcl_3,0,255);
    
  background(0);
  stroke(0);
  fill(0);
  line(width/2,0,width/2,height);
  line(0,height/2,width,height/2);
  dista = distance(mouseX,mouseY,0,0);
  fill(dista);
  rect(0,0,width/2,height/2);
  dista = distance(mouseX,mouseY,width,height);
  fill(dista);
  rect(width/2,height/2,width/2,height/2);
  dista = distance(mouseX,mouseY,0,height);
  fill(dista);
  rect(0,height/2,width/2,height/2);
  dista = distance(mouseX,mouseY,width,0);
  fill(dista);
  rect(width/2,0,width/2,height/2);
}

float distance(float x1,float y1,float x2 , float y2){
  return sqrt(pow((x1-x2),2)+pow((y1-y2),2));
}
