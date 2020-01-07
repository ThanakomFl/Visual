float r = 10;
float theta = 0;

void setup() {
  size(900, 900);
}

void draw() {
  background(170);
  float x = (sin(theta)+1) * width / 2;
  print(sin(theta));
  theta += 0.05;
  
  fill(0);
  line(width / 2, 0, x, height / 2);
  ellipse(x, height/2, 20, 20);
}
