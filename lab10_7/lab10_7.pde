PFont f;
float r = 100;
float w ;
float z = 0;
String message = "text along a curve";

void setup(){
  size(320,320,P3D);
  f = createFont("Georgia",40,true);
  textFont(f);
  textAlign(CENTER);
  smooth();
}

void draw(){
  background(255);
  noFill();
  translate(width/2,height/2);
  noFill();
  ellipse(0,0,r*2,r*2);
  float arclength = 0;
  for(int i = 0 ; i< message.length() ; i++){
    w = textWidth(message.charAt(i));
    float theta = z + PI + arclength / r;
    pushMatrix();
      translate(r*cos(theta) , r*sin(theta));
      rotate(theta);
      fill(0);
      pushMatrix();
        rotate(radians(90));
        text(message.charAt(i),0,0);
      popMatrix();
    popMatrix();
    arclength += w;
  }
  z = z + 0.01;
}
