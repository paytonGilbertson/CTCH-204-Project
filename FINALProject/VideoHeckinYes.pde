void videoHeckYa() {
  background(255);
  song.play();
  song.amp(1);
  preWords();
}

void staticScreen() {
  staticSound.play();
  staticSound.amp(0.5);
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
  delay(5000);
  staticSound.stop();
  //currentState = ProjectState.PLAYING;
}

void preWords(){
  
}
