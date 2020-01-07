void setup() {
  size(900, 900);
  smooth();
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  drawCircle(width/2, height/2, width);
}

void drawCircle(float x, float y, float r) {
  ellipse(x, y, r, r);
  if (r > 2) {
    r *= 0.75;
    drawCircle(x, y, r);
  } 
}
