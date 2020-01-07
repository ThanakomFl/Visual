Ball[] ball = new Ball[1];

float gravity = 0.1;
void setup(){
  size(300,300);
  ball[0] = new Ball(50,0,16);
}

void draw(){
  background(255,255,0);
  for(int i =0 ; i< ball.length;i++){
    ball[i].display();
    ball[i].update();
  }
}

void mousePressed(){
  ball = (Ball[]) append(ball, new Ball(mouseX,mouseY,random(5,20)));
}
