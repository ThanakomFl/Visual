int size = 50 ;
int x = 0;
int y = 0;
int s1 = 1 ;
int s2 = 1 ;
int speed = 5 ;
boolean button = false;
boolean at = false;
void setup(){
  size(400,400);
}

void draw(){
  background(#B7F2EE);
  fill(#F9FA26);
  rect(x, y, size, size);
  if(button ){
    x = x + s1 ;
    y = y + s2 ;
  }
  
  if(x <= width - size && y == 0) {
    s1 = speed ;
    s2 = 0 ;
    //print('1');
    at = false;
  }
  if(x == width - size && y <= height - size){
    s1 = 0 ;
    s2 = speed ;
    //print('2');
  }
  if(x <= width - size && y ==  height - size){
    s1 = -1*speed ; 
    s2 = 0 ;
    //print('3');
    at = true;
  }
  if(x == 0 && y <= height - size && at){
    s1 = 0 ; 
    s2 = -1*speed ;
    //print('4');
  }
  
}

void mousePressed(){
  button = !button;
}
