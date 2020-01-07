float r1,r2;
void setup(){
  size(500,500,P3D);
  r1 = 0;
  r2 = 0;
}

void draw(){
  background(255,0,255);
  pushMatrix();
  translate(width/4,height/4,0);
  rotateX(r1);
  rotateY(r1);
  drawPyramid(25);
  r1 = r1 + 0.02;
  popMatrix();
  
  pushMatrix();
  translate(width/2,height/2,0);
  rotateX(r2);
  rotateY(r2);
  rotateZ(r2);
  drawPyramid(100);
  r2 = r2 + 0.03;
  popMatrix();
  
}

void drawPyramid(int t){
  stroke(0);
  beginShape(TRIANGLES);
  fill(255,150);
  vertex(-t,-t,-t);
  vertex(t,-t,-t);
  vertex(0,0,t);
  
  fill(150,150);
  vertex(t,-t,-t);
  vertex(t,t,-t);
  vertex(0,0,t);
  
  fill(255,150);
  vertex(t,t,-t);
  vertex(-t,t,-t);
  vertex(0,0,t);
  
  fill(150,150);
  vertex(-t,t,-t);
  vertex(-t,-t,-t);
  vertex(0,0,t);
  
  endShape(TRIANGLES);
}
