//ArrayList<Breather> breathers = new ArrayList<Breather>();
Breather[] breathers = new Breather[1];
void setup() {
   size(900, 900);
  smooth();
   breathers[0] = new Breather();
  for(int i = 1; i < 300; i++) {
    breathers = (Breather[]) append(breathers,new Breather());
  }
}

void draw() {
  background(0);
  
  for(int i = 0 ; i<breathers.length ; i++) {
    breathers[i].breath();
    breathers[i].display();
  }
}
