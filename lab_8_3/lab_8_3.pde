float r;
float r2;
void setup(){
  size(400,400,P3D);
  r = 0;
  r2 = 0;
}

void draw(){
  fill(#F7F723);
  background(170);
  pushMatrix();
  translate(width/4,height/4);
  rotateZ(r);
  rectMode(CENTER);
  rect(0,0,80,80);
  r = r + 0.1;
  popMatrix();
  
  pushMatrix();
  translate(width*3/4,height*3/4);
  rotateY(r2);
  rect(0,0,80,80);
  r2 = r2 + 0.1;
  popMatrix();
}
