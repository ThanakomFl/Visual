class Car {
   color c;
   float xpos,ypos,xspeed;
   //Constructor
   Car(color c_,float xpos_ , float ypos_ , float xspeed_){
     c = c_;
     xpos = xpos_;
     ypos = ypos_;
     xspeed = xspeed_;
   }
   
   void move(){
     xpos = xpos + xspeed;
     if(xpos > width){
       xpos = 0;
     }
   }
   
   void display(){
     rectMode(CENTER);
     fill(c);
     rect(xpos,ypos,20,10);
   }
}
