int mx_1 = 150;
int mx_2 = 100;
int mx_3 = 80;
int speed1,speed2,speed3 = 5;
void setup(){
  size(300,300);
}

void draw(){
  background(0);
  rectMode(CENTER);
  if(mx_1 > width-64 || mx_1 < 64) {speed1 = speed1*(-1);}
  if(mx_2 > width-32 || mx_2 < 32) {speed2 = speed2*(-1);}
  if(mx_3 > width-40 || mx_3 < 40) {speed3 = speed3*(-1);}
  print(mx_1);
  drawCar(mx_1,150,64,color(200,200,0));
  mx_1 += speed1;
  mx_2 += speed2;
  mx_2 += speed3;

  //drawCar(mx_2,75,32,color(0,200,100));
  //drawCar(mx_3,200,40,color(200,0,0));
}
void drawCar(int x,int y,int thesize,color c){
  int offset = thesize/4;
  fill(c);
  rect(x,y,offset*4,offset*2);
  fill(125);
  stroke(125);
  rect(x-offset,y-offset,offset,offset/2);
  rect(x+offset,y-offset,offset,offset/2);
  rect(x-offset,y+offset,offset,offset/2);
  rect(x+offset,y+offset,offset,offset/2);
}
