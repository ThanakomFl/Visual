Car[] cars = new Car[150];
void setup(){
  size(300,300);
  //fullScreen();
  for(int i=0 ; i < cars.length ; i++){
    cars[i] = new Car(color(random(255),random(255),random(255),random(10,255)),random(width),random(height),random(1,5));
  }  
}

void draw(){
  background(0);
  for(int i=0 ; i < cars.length ; i++){
    cars[i].move();
    cars[i].display();
  }
}
