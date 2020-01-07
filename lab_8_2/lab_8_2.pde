float r;

void setup(){
  size(400,400,P3D);
  r = 0;
}

void draw(){
  background(170);
  translate(width/2,height/2);
  rotate(r);
  line(0,0,50,50);
  line(0,0,-50,-50);
  r = r + 0.01;
  fill(#F7F723);
  ellipse(50,50,20,20);
  ellipse(-50,-50,20,20);

}
