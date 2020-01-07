PVector location;
PVector speed = new PVector(0, 2);

void setup() {
  size(500, 500);
  noStroke();
  location = new PVector(width/2, 0);
}

void draw() {
  background(255);
  float down_prob = 0.2;
  float up_prob = 0.1;
  float n = random(1);
  
  if (n < down_prob) location.add(speed);
  else if (n < down_prob + up_prob) location.sub(speed);
  
  fill(0, 0, 255, 150);
  ellipse(location.x, location.y, 10, 10);
}
