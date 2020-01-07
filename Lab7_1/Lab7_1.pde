void setup() {
  size(300, 300);
  background(255);
  noStroke();
}

void draw() {
  float r_prob = 0.6;
  float g_prob = 0.1;
  float b_prob = 0.3;
  float n = random(1);
  
  if (n < r_prob) fill(255,0,0,150);
  else if (n < g_prob + r_prob) fill(0, 255, 0, 150);
  else fill(0, 0, 255, 150);
  ellipse(random(width), random(height), 64, 64);
}
