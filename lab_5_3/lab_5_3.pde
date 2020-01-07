Ball[] ball = new Ball[2];

float gravity = 0.1;
void setup(){
  size(300,300);
  ball[0] = new Ball(70,0,16);
  ball[1] = new Ball(150,50,30);
}

void draw(){
  background(255,255,0);
  for(int i =0 ; i<2;i++){
    ball[i].display();
    ball[i].update();
  }
}
