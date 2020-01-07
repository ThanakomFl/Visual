float r = 10;
float theta = 0;

void setup() {
  size(900, 900);
  background(0,0,255);
}

void draw() {
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  noStroke();
  fill(255, 0, 0);
  ellipse(x + width/2, y + height/2, 20, 20);
  theta -= 0.01;
  r += 0.1;
}
