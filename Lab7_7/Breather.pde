class Breather {
  float theta = 0;
  float size;
  float x, y;
  color col;
  
  Breather() {
    x = random(width);
    y = random(height);
    theta = random(100);
    col = color(random(255),random(255),random(255));
    size = random(30,100);
  }
  
  void breath() {

    theta += 0.05;
  }
  
  void display() {
    fill(col,200);
    ellipse(x, y, (sin(theta)) * size, (sin(theta)) * size);
  }
}
