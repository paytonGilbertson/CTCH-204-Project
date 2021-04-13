int topX = 175, topY = 175;
int rightX = 325, rightY = 250;
int bottomX = 175, bottomY = 325;
int r = 255, g = 0, b = 0;

// creates the colour gradient based on RGB colours
color playClr() {
  color triCLR;
  if (r > 0 && b == 0) {
    r--;
    g++;
  }
  if (g > 0 && r == 0) {
    g--;
    b++;
  }
  if (b > 0 && g == 0) {
    r++;
    b--;
  }
  triCLR = color(r, g, b);
  return triCLR;
}

// draws the play button and calls the colour gradient function for the fill
void playButton() {
  fill(playClr());
  triangle(topX, topY, rightX, rightY, bottomX, bottomY);
}

// Checks if in begin state to start video or if in end state links to original video
void mousePressed() {
  if (overPlay(175, 175, 150, 150) && currentState == ProjectState.BEGIN) {
    currentState = ProjectState.STATIC;
  }
  if (currentState == ProjectState.END) {
    link("https://www.youtube.com/watch?v=qh34QgRRY1I");
  }
}

// checks if cursor is within play button
boolean overPlay(int x, int y, int w, int h) {
  if (mouseX >= 0 && mouseX <= width &&
    mouseY >= 0 && mouseY <= height) {
    //println("MOUSE OVER");
    //cursor(HAND);
    return true;
  } else {
    return false;
  }
}
