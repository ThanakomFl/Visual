PFont f;
String[] words;
int c=0;
String typing = "";
String saved = "";
String url = "http://textfiles.com/stories/100west.txt";
void setup(){
  size(600,400);
  f = createFont("Tahoma" , 30 , true);
  String[] data = loadStrings(url);
  String long_string = join(data," ");
  words = splitTokens(long_string," ,.?!;:\"");
  frameRate(3);
}

int count;
void draw(){
  background(0,200,200);
  textFont(f);
  fill(0);
  text(url , 20 , height/5);
  text("Type a words belos",20,height*2/5);
  text(typing , 20 , height*3/5);
  c = (c+1)%words.length;
  fill(255,0,0);
  text(saved,100,height*4/5);
  text(count,20,height*4/5);
}

void keyPressed(){
  if(key == '\n'){
    saved = typing;
    String w = saved;
    count = 0 ;
    for(int i = 0 ; i < words.length ; i++){
      if((w.toLowerCase()).equals(words[i].toLowerCase())){
      count++;
    }
  }
    typing = "";
  }else{
    typing = typing + key;
  }
}
