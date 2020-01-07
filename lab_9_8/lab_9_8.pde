PImage img;
PImage dest;

void setup(){
  img = loadImage("flower.jpg");
  surface.setSize(img.width,img.height);
  dest = createImage(img.width,img.height,RGB);
}

void draw(){
  img.loadPixels();
  dest.loadPixels();
  for(int x = 1 ; x < width ; x++){
    for(int y = 0 ; y < height ; y++){
      int loc = x + y*img.width;
      color pix = img.pixels[loc];
      // left pixel
      int leftLoc = (x-1) + y*img.width;
      color leftPix = img.pixels[leftLoc];
      // Difference
      float diff = abs(brightness(pix) - brightness(leftPix)); /// get maximum r or g or b 
      dest.pixels[loc] = color(diff);
    }
  }
  dest.updatePixels();
  image(dest,0,0);
}
