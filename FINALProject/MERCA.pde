///////////////// Exact MERCA colours from https://www.schemecolor.com/united-states-of-america-flag-colors.php ////////////
PGraphics pg;
void mercaBG (){
  background(255);
  int stripeY = 0; 
  int stripeHeight = 25;
  
  for(stripeY = 0; stripeY < height; stripeY += 2*stripeHeight){
    fill(178, 34, 52);
     rect(0, stripeY, width, stripeHeight); 
  }
  
  image(star(),50,50);  
  imageMode(CENTER);
  image(mercaHead.image, width/2, height/2);
  
}

/////////////// FROM PROCESSING.ORG EXAMPLE ///////////////
PImage star() {
  pg = createGraphics(50, 50);
  pg.beginDraw();
  float angle = TWO_PI / 5;
  float halfAngle = angle/2.0;
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = 100 + cos(a) * 21;
    float sy = 100 + sin(a) * 21;
    pg.vertex(sx, sy);
    sx = 100 + cos(a+halfAngle) * 9;
    sy = 100 + sin(a+halfAngle) * 9;
    pg.vertex(sx, sy);
  }
  pg.endDraw();
  return pg;
}
