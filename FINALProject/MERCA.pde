///////////////// Exact MERCA colours from https://www.schemecolor.com/united-states-of-america-flag-colors.php ////////////
PShape pg;
void mercaBG (){
  background(255);
  int stripeY = 0; 
  int stripeHeight = 25;
  
  for(stripeY = 0; stripeY < height; stripeY += 2*stripeHeight){
    fill(178, 34, 52);
     rect(0, stripeY, width, stripeHeight); 
  }
  
  star(100, 100);  
  imageMode(CENTER);
  image(mercaHead.image, width/2, height/2);
  
}

/////////////// FROM PROCESSING.ORG EXAMPLE ///////////////
void star(float x, float y) {
  float angle = TWO_PI / 5;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * 21;
    float sy = y + sin(a) * 21;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * 9;
    sy = y + sin(a+halfAngle) * 9;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
