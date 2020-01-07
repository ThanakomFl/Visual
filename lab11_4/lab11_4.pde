int[] data;

void setup(){
  size(300,300);
  String[] s = loadStrings("data.txt"); // 1 line = 1 array
  data = new int[s.length];
  for(int i = 0 ; i < s.length ; i++){
    data[i] = int(s[i]);
  }
}

void draw(){
  background(255,255,0);
  stroke(0);
  for(int i =0; i <data.length ; i++){
    fill(data[i]);
    rect(i*30,height,30,-data[i]);
  }
}

void keyPressed(){
  background(255,255,0);
  for(int i =0; i <data.length ; i++){
    data[i] += random(-10,10);
    data[i] = constrain(data[i],0,300);
  }
}

void mousePressed(){
  String[] new_data = new String[data.length];
  for(int i =0; i <data.length ; i++){
    new_data[i] = str(data[i]);
  }
  saveStrings("data.txt",new_data);
  background(0);
}
