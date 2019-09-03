float size = 10 ;
float x = 0;
float r,g,b;
void setup(){
  size(500,500);
}

void draw(){
  background(0);
  for(int i = 0 ; i <= width ; i += size){
    for (int j = 0 ; j <= height ; j += size){
      noStroke();
      r = random(150,255);
      g = random(150,255);
      b = random(150,255);
      fill(r,g,b);
      rect(i,j,size,size);
    }
   }
}
