float r;

void setup(){
  size(400,400,P3D);
  r = 0;
}

void draw(){
  background(170);
  translate(width/2,height/2);
  rotate(radians(r));
  rectMode(CENTER);
  rect(0,0,100,100);
  rotate(radians(45));
  rect(0,0,100,100);
  r = r + 0.2; 

}
