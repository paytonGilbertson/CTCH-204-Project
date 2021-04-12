void videoHeckYa() {
  background(255);
  if(count < 1504){
    mercaBG();
  }
  if(count >= 1504 && count < 3008){
   techTime(); 
  }
}

void staticScreen() {
  color[] colours = {color(0), color(100), color(200)};

  int x = 0;
  int y = 0;
  int rectWidth = 20;
  int rectHeight = 20;
  noStroke();

  for (x = 0; x < width; x += rectWidth) {
    for (y = 0; y < height; y += rectHeight) {
      fill(colours[int(random(colours.length))]);
      rect(x, y, rectWidth, rectHeight);
    }
  }
  //currentState = ProjectState.PLAYING;
}

void preWords() {
}
