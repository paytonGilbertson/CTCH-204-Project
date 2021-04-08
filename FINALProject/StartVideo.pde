int topX = 175, topY = 175;
int rightX = 325, rightY = 250;
int bottomX = 175, bottomY = 325;
int r = 255, g = 0, b = 0;

color playClr() {
  color triCLR;
 if(r > 0 && b == 0) {
   r--;
   g++;
 }
 if(g > 0 && r == 0) {
  g--;
  b++;
 }
 if(b > 0 && g == 0) {
  r++;
  b--;
 }
 triCLR = color(r, g, b);
 return triCLR;
}

void playButton() {
  fill(playClr());
  triangle(topX, topY, rightX, rightY, bottomX, bottomY);
}

void mouseClicked() {
  if(overPlay(175, 175, 150, 150)){
    currentState = ProjectState.PLAYING;
  }
}

boolean overPlay(int x, int y, int w, int h) {
 if(mouseX >= x && mouseX <= x+w &&
    mouseY >= y && mouseY <= y+h) {
      return true;
    }
    else {
      return false; 
    }
}
