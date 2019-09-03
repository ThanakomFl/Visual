int size = 50 ;
int x = 0;
float y = 0;
int s1 = 1 ;
float s2 = 1 ;
float speed = 0 ;
float gravity = 0.1;
boolean button = false;
boolean at = true;
void setup(){
  size(400,400);
}

void draw(){
  background(#B7F2EE);
  fill(#F9FA26);
  circle(width/2,y,size);
  y = y + speed;
  speed = speed + gravity ;
  if(y > height - size/2 ){
    speed = speed * (-0.95);
  }
}
