PFont endFont;

void endSlate() {
  endFont = createFont("Flegrei", 40);
  textFont(endFont);
  //PFont.list();
  textAlign(CENTER);
  background(#20ACC9);
  noStroke();

  fill(#673B90);
  rect(0, 240, 400, 400);
  fill(#3D6BBC);
  triangle(0, 0, 250, 0, 0, 340);
  fill(#C93127);
  triangle(100, 42, 250, 320, 400, 380);
  fill(#F1D040);
  triangle(500, 0, 230, 300, 410, 0);
  fill(#F5A01F);
  triangle(500, 500, 100, 400, 20, 480);
  
  fill(#131C5a);
  text("Dr. T-Rizzle Sick Flow", width/2, 50);
  textSize(20);
  text("Original video by DrTrizzle69@gmail.com", width/2, 100);
  text("Music - I Get Around - Tupac", width/2, 125);
  text("Lyricist - Angus Croll", width/2, 150);
  text("Performed by - Dr T-Rizzle", width/2, 175);
  
  text("Pixel Art and Code by Payton", width/2, 250);
  
}
