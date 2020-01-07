String s = "The quick brown fox jumps over the lazy dog.";

// String method 

// .indexOf()
println(s.indexOf("fox"));

// . substring()
String t = s.substring(3,11);
println(t);

//Function
// split()
String[] list = split(s," ");
for(int i = 0 ; i < list.length ; i++){
  println(list[i] + " " + i);
}

String s = "The,quick brown,fox jumps!over the$lazy dog.";
//splitTokens()
String[] x = splitTokens(s," , !$.");
for(int i = 0 ; i < x.length ; i++){
  println(x[i] + " " + i);
}

// join()
String y = join(x,",");
println(y);
