PImage backgroundMap; // Variable for background map image

String[] bus_stops; // String array for storing bus stops

String[] bus_rides; // String array for storing bus rides

String[] bus_time; // String array for storing bus rides

// URLs of online text files



String url_map = "https://cpemis.eng.cmu.ac.th/~santi/vip_book_files/lisbon_roads.png";

String url_bus_stops = "https://cpemis.eng.cmu.ac.th/~santi/vip_book_files/stops.txt";

String url_bus_rides = "https://cpemis.eng.cmu.ac.th/~santi/vip_book_files/rides.txt";

String url_bus_time = "https://cpemis.eng.cmu.ac.th/~santi/vip_book_files/time.txt";



//String url_map = "data/lisbon_roads.png";

//String url_bus_stops = "data/stops.txt";

//String url_bus_rides = "data/rides.txt";

//String url_bus_time = "data/time.txt";

float mapGeoLeft = -9.253986175115207; // Longitude degree west

float mapGeoRight = -9.092649769585254; // Longitude degree east

float mapGeoTop = 38.799342105263165; // Latitude degree north

float mapGeoBottom = 38.665570175438; // Latitude degree south

float mapScreenWidth, mapScreenHeight; // Variables for dimension of map in pixels

int c = 0; // Variable for line index

void setup(){

size(600, 600);

ellipseMode(CENTER);

smooth();

backgroundMap = loadImage(url_map);

bus_stops = loadStrings(url_bus_stops);

bus_rides = loadStrings(url_bus_rides);

bus_time = loadStrings(url_bus_time);

// Set map dimension to dispaly window's width and height

mapScreenWidth = width;

mapScreenHeight = height;

//Set framerate to 10

frameRate(5);

}

void draw(){

// Display background map

image(backgroundMap, 0, 0, mapScreenWidth, mapScreenHeight);

// Display rides

if(c < bus_stops.length){

String[] s = split(bus_stops[c], ',');

String[] r = split(bus_rides[c], ',');

for(int i=0; i<s.length; i+=2){

// Converting geogrphical coordinates into (x, y) coordinates

float x = mapScreenWidth*(float(s[i])-mapGeoLeft)/(mapGeoRight-mapGeoLeft);

float y = mapScreenHeight - mapScreenHeight*(float(s[i+1])-mapGeoBottom)/(mapGeoTop-mapGeoBottom);

// Radius of circle varies with the number of rides

float rad = float(r[i/2]);

// Draw a circle

noStroke();

fill(0, 255, 255, 100);

ellipse(x, y, rad/2, rad/2);

}

// Display time (hour)

textSize(80);

fill(255, 255, 0, 150);

text(bus_time[c], width-130, height-50);

// increment line index

c++;

}

}
