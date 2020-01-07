PFont f;
String typing = "";
String saved = "";

void setup(){
  size(300,200);
  f = createFont("Arial",16,true);
}

void draw(){
  background(255);
  textFont(f);
  fill(0);
  text("Click in this applest and type.\nHint return to save what you typed",25,40);
  text(typing , 25 , 90);
  fill(255,0,0);
  text(saved,25,130);
}

void keyPressed(){
  if(key == '\n'){
    saved = typing;
    typing = "";
  }else{
    typing = typing + key;
  }
}
