float r = 75;
float theta = 0;

void setup() {
  size(900, 900);
  r = width * 0.45;
}

void draw() {
  background(0,0,255);
  float x = r * cos(theta);
  float y = r * sin(theta);
  
  noStroke();
  fill(255, 0, 0);
  ellipse(x + width/2, y + height/2, 50, 50);
  theta += 0.01;
}
