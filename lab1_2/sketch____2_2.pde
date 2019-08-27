float r = 150 , g = 0 ,b = 0 ;

void setup(){
  size(400,400);  
}

void draw(){
  background(r,g,b);
  stroke(255);
  line(width/2,0,width/2,height);
  if(mouseX > width/2){
    r++;
  }else{
    r--;
  }
  //if(r > 255) r = 255;
  //if(r < 0) r = 0 ;
  r = constrain(r,0,255); // control variable in range
  
  line(0,height/2,width,height/2);
  if(mouseY > height/2){
    b++;
  }else{
    b--;
  }
  
  b = constrain(b,0,255);
  
  if(mousePressed){
    g++;
  }else{
    g--;
  }
  
  b = constrain(b,0,255);
}
