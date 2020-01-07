class Ball {
   float size;
   float xpos,ypos;
   float yspeed = 0;
   //Constructor
   Ball(float xpos_ , float ypos_ ,float size_){
     size = size_;
     xpos = xpos_;
     ypos = ypos_;
   }
   
    void display(){
      ypos = ypos + yspeed;
      yspeed = yspeed + gravity;
      if(ypos > height - 20){
          yspeed = yspeed * -0.95;
      }
    }
    
    void update(){
      fill(150);
      noStroke();
      ellipse(xpos,ypos,size,size);
    }
}
