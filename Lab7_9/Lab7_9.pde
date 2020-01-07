void setup() {
  size(900, 900);
  smooth();
}

void draw() {
  background(0);
  stroke(255);
  noFill();
  drawCircle(width/2, height/2, width/2);
}

void drawCircle(float x, float y, float r) {
  ellipse(x, y, r, r);
  if (r > 7) {
    drawCircle(x - r/2, y, r/2);
    drawCircle(x + r/2, y, r/2);
    drawCircle(x, y - r/2, r/2);
    drawCircle(x, y + r/2, r/2);
  } 
}
