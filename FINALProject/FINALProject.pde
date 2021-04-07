import processing.sound.*;

SoundFile file;

TRizzleHead fedoraHead;
TRizzleHead techHead;
TRizzleHead mercaHead;

int bpm = 96;
// if framerate is 30fps, every 48 frames is 1 beat

void setup() {
  size(500, 500);
  background(255);
  
  file = new SoundFile(this, "song.mp3");
  file.play();
  file.amp(1);
  
  fedoraHead = new TRizzleHead();
  techHead = new TRizzleHead();
  mercaHead = new TRizzleHead();
  
  fedoraHead.image = loadImage("t-rizzleFedora.png");
  techHead.image = loadImage("techHead.png");
  mercaHead.image = loadImage("merca.png");
}

void draw() {
  
}
