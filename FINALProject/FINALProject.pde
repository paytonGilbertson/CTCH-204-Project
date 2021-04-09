import ddf.minim.*;

Minim mSong;
AudioPlayer song;

TRizzleHead fedoraHead;
TRizzleHead techHead;
TRizzleHead mercaHead;

int count = 0;

enum ProjectState {
  BEGIN, 
  STATIC,
  PLAYING, 
  END
}

ProjectState currentState = ProjectState.BEGIN;

int bpm = 96;
// if framerate is 30fps, every 48 frames is 1 beat

void setup() {
  size(500, 500);
  background(255);
  frameRate(30);
  colorMode(RGB);

  mSong = new Minim(this);
  song = mSong.loadFile("song.mp3");

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
    //print("BEGIN");
    break;
  case STATIC:
    staticScreen();
    //print("STATIC");
    count++;
    break;
  case PLAYING:
    //print("PLAYING");
    videoHeckYa();
    break;
  case END:
    endSlate();
    break;
  }
  println(count);
  if(count >= 250) {
    currentState = ProjectState.PLAYING;
  }
}
