int[] xpos = new int[100];
int[] ypos = new int[100];

float gravity = 0.1;
void setup(){
  size(500,500);
  for(int i=0;i<xpos.length ; i++){
    xpos[i] = mouseX;
    ypos[i] = mouseY;
  }
  smooth();
}

void draw(){
  background(0);
  noStroke();
  xpos[xpos.length - 1] = mouseX;
  ypos[ypos.length - 1] = mouseY;
   
  for(int i = 0 ; i< xpos.length -1;i++){
     xpos[i] = xpos[i+1];
     ypos[i] = ypos[i+1];
     //xpos[i] = xpos[i+1];
     //ypos[i] = ypos[i+1];
  }
  
  for(int i = xpos.length-1 ; i> 0 ;i--){
    //fill(250,120-(i*2),35,200-(i*1));
    ellipse(xpos[i],ypos[i],20+(i*0.5),20+(i*0.5));
  } 
}
