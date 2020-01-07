float r1,r2,r3;
void setup(){
  size(500,500,P3D);
  r1 = 0;
  r2 = 0;
  r3 = 0;
}

void draw(){
  background(0);
  translate(width/2,height/2,0);
  ellipseMode(CENTER);
  fill(#F7F723);
  ellipse(0,0,50,50);
  
  rotate(r1);
  translate(80,80,0);
  fill(50,200,255);
  ellipse(0,0,20,20);
  r1 = r1 + 0.01;
  
  pushMatrix();
  rotate(r2);
  translate(20,20,0);
  fill(50,200,100);
  ellipse(0,0,10,10);
  r2 = r2 + 0.05;
  popMatrix();

  pushMatrix();
  rotate(r3);
  translate(35,35,0);
  fill(50,100,100);
  ellipse(0,0,15,15);
  r3 = r3 + 0.03;
  popMatrix();
}
