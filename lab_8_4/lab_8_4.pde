float r;
float r2;
Rotater [] rotaters;
void setup(){
  size(600,350,P3D);
  rotaters = new Rotater[230];
  for (int i = 0 ; i< rotaters.length;i++){
    rotaters[i] = new Rotater(random(width),random(height),random(-0.1,0.1),random(60));
  }  
}

void draw(){
  background(255,255,0);
  
  for(int i = 0 ; i < rotaters.length ; i++){
    rotaters[i].spin();
    rotaters[i].display();
  }
  
}
