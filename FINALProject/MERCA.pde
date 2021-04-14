///////////////// Exact MERCA colours from https://www.schemecolor.com/united-states-of-america-flag-colors.php ////////////

// Bring in the 'merca book of 'mercan words
PImage mercaBook;
float bookX = random(0, 500);
float bookY = random(0, 500);


void mercaBG () {
  // book image from indigo.com
  mercaBook = loadImage("mercaBook.png");
  background(255);
  int stripeY = 0; 
  int stripeHeight = 25;

  // Make those stripey stripes of freedom
  for (stripeY = 0; stripeY < height; stripeY += 2*stripeHeight) {
    fill(178, 34, 52);
    rect(0, stripeY, width, stripeHeight);
  }


  // create the circle of stars of freedom
  noStroke();
  fill(60, 59, 110);
  star(250, 50);
  star(250, 450);
  star(50, 250);
  star(450, 250);
  star(332.5, 67);
  star(400, 116);
  star(437, 177.5);
  star(404, 377);
  star(439.5, 316.5);
  star(338.5, 428.5);
  star(102, 385.5);
  star(168.5, 433);
  star(62, 321.5);
  star(98.5, 119.5);
  star(161.5, 69.5);
  star(64, 174);

  // randomly generate a size of the book image
  float num = random(5, 10);
  image(mercaBook, bookX, bookY, mercaBook.width/num, mercaBook.height/num);
  // change location of book every 10 frames
  if (count % 48 == 0) {
    bookX = random(0, 500);
    bookY = random(0, 500);
  }

  // draw 'mercaHead and rotate it like a record
  imageMode(CENTER);
  translate(width/2, height/2);
  rotate(frameCount/PI*0.5);
  image(mercaHead.image, 0, 0);
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
