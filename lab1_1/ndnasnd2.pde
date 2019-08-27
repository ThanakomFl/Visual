// Drawing "Rob"
size(300,300);
background(255);
smooth();

rectMode(CENTER);

//Rob's body
fill(150);
rect(100,100,20,100);

//Rob's head
fill(255);
ellipse(100,70,60,60);

//Rob's eyes
fill(0);
ellipse(81,70,16,32);
ellipse(119,70,16,32);

//Rovb's legs
line(90,150,80,160);
line(110,150,120,160);
