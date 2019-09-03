int size = 40 ;
int x = size/2 ;
int s = 1 ;
boolean button = false;
boolean at = false;
void setup(){
  size(400,400);
}

void draw(){
  background(#B7F2EE);
  fill(#F9FA26);
  circle(x, height/2, size);
  if(button == false ){
    x = x;
  }else{
    x = x + s ;
  }
  
  if(x > width - size/2|| x == size/2){
    s = -s ;
  }
}

void mousePressed(){
  button = !button;
}
