import processing.sound.*;

//SoundFile song;
SoundFile staticSound;

TRizzleHead fedoraHead;
TRizzleHead techHead;
TRizzleHead mercaHead;

enum ProjectState {
  BEGIN, 
    PLAYING, 
    END
}

ProjectState currentState = ProjectState.BEGIN;

int bpm = 96;
// if framerate is 60fps, every 96 frames is 1 beat

void setup() {
  size(500, 500);
  background(255);
  frameRate(60);
  colorMode(RGB);

  //song = new SoundFile(this, "song.mp3");
  staticSound = new SoundFile(this, "static.mp3");

  fedoraHead = new TRizzleHead();
  techHead = new TRizzleHead();
  mercaHead = new TRizzleHead();

  fedoraHead.image = loadImage("t-rizzleFedora.png");
  techHead.image = loadImage("techHead.png");
  mercaHead.image = loadImage("merca.png");
}


void draw() {
  background(255);

  switch(currentState) {
  case BEGIN:
    playButton();
    print("BEGIN");
    break;
  case PLAYING:
    print("PLAYING");
    videoHeckYa();
    break;
  case END:
    endSlate();
    break;
  }
}
