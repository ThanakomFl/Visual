int size = 40 ;
int x = width/2 ;
int y = height / 2 ;
int s1 = 2 ;
int s2 = 5 ;
boolean button = false;
boolean at = false;
void setup(){
  size(400,400);
}

void draw(){
  background(#B7F2EE);
  fill(#F9FA26);
  circle(x, y, size);
  if(button ){
    x = x + s1 ;
    y = y + s2 ;
  }
  
  if(x > width - size/2|| x == size/2){
    s1 = -s1 ;
  }
  if(y > height - size/2 || y == size/2){
    s2 = -s2 ; 
  }
}

void mousePressed(){
  button = !button;
}
