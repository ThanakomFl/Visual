PFont f;

void setup(){
  size(400,300);
  f = createFont("Arial",20,true);
}

void draw(){
  background(255);
  stroke(170);
  line(width/2,0,width/2,height);
  
  textFont(f);
  fill(0);
  
  textAlign(CENTER); // CENTER , LEFT , RIGHT
  text("Chaing Mai University",width/2,200);
}
