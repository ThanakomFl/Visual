Car myCar1;
Car myCar2;

void setup(){
  size(300,300);
  myCar1 = new Car(color(255,0,0),0,200,2);
  myCar2 = new Car(color(0,0,255),0,100,1);
}

void draw(){
  background(0);
  myCar1.move();
  myCar1.display();
  myCar2.move();
  myCar2.display();
}
