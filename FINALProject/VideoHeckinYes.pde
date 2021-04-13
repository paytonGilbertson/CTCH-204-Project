// calls different video functions based on frame count.
void videoHeckYa() {
  background(255);
  if (count < 650) {
    mercaBG();
  }
  if (count >= 650 && count < 1600) {
    techTime();
  }
  if (count >= 1600 && count < 2600) {
    hemanTime();
  }
  if (count >= 2600) {
    currentState = ProjectState.END;
  }
}

// displays "static" based off of random grey colours
void staticScreen() {
  color[] colours = {color(0), color(100), color(200), color(255)};

  int x = 0;
  int y = 0;
  int rectWidth = 20;
  int rectHeight = 20;
  noStroke();

  // randomly chooses a colour for each box of 20 pixels to create static
  for (x = 0; x < width; x += rectWidth) {
    for (y = 0; y < height; y += rectHeight) {
      fill(colours[int(random(colours.length))]);
      rect(x, y, rectWidth, rectHeight);
    }
  }
  //currentState = ProjectState.PLAYING;
}
