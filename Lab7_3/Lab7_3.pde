float t = 0;
float t2 = 0;

void setup() {
  size(900, 900);
}

void draw() {
  background(0);
  float n = noise(t);
  print(n,'\n');
  t += 0.004;
  t2 += 0.008;
  float n2 = noise(t2);
  noStroke();
  for(int i = 0; i < 10; i++) {
    fill(255,255,100, 255 - 15 * i);
    ellipse(n * width, n2 * height, 40 + 5 * i, 40 + 5 * i);
  }
}
