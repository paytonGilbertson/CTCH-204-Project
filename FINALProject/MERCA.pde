///////////////// Exact MERCA colours from https://www.schemecolor.com/united-states-of-america-flag-colors.php ////////////

void mercaBG (){
  background(255);
  int stripeY = 0; 
  int stripeHeight = 25;
  
  for(stripeY = 0; stripeY < height; stripeY += 2*stripeHeight){
    fill(178, 34, 52);
     rect(0, stripeY, width, stripeHeight); 
  }
  fill(60, 59, 110);
  star(100, 100, 9, 21, 5);
  
  imageMode(CENTER);
  image(mercaHead.image, width/2, height/2);
}

/////////////// FROM PROCESSING.ORG EXAMPLE ///////////////
void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
