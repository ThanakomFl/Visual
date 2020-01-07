String s = "chiang mai university";


// Method chatAt()
println(s.charAt(3));

//Method length()
for(int i = 0 ; i < s.length() ; i++){
  println(s.charAt(i));
}

//Method toUpperCase()
String t = s.toUpperCase();
println(t);

//Method equals
println(s.equals(t));
println(s.equals("chiang mai university"));

//Joining string using "+"
String x = "CPE "+t;
println(x);

//Font list
String []f = PFont.list();
for(int i = 0 ; i < f.length;i++){
    println(f[i]);
}
