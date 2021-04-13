import ddf.minim.*;

// setup for the song to play
Minim mSong;
AudioPlayer song;

// setup for the static noise to play
Minim mStatic;
AudioPlayer staticSound;

// classes for each pixel art head
TRizzleHead fedoraHead;
TRizzleHead techHead;
TRizzleHead mercaHead;

// frame count variable (used for timing)
int count = 0;

// Calls the correct functions based on where in the video you are
enum ProjectState {
  BEGIN, 
    STATIC, 
    PLAYING, 
    END
}

// sets state to beginning
ProjectState currentState = ProjectState.BEGIN;

int bpm = 96;
// if framerate is 30fps, every 48 frames is 1 beat

void setup() {
  size(500, 500);
  background(255);
  frameRate(30);
  colorMode(RGB);

  // loads in song and static sound
  mSong = new Minim(this);
  song = mSong.loadFile("song.mp3");

  mStatic = new Minim(this);
  staticSound = mStatic.loadFile("static.mp3");

  // Creates trevors many heads
  fedoraHead = new TRizzleHead();
  techHead = new TRizzleHead();
  mercaHead = new TRizzleHead();

  // adds images to trevors many heads
  fedoraHead.image = loadImage("t-rizzleFedora.png");
  techHead.image = loadImage("techHead.png");
  mercaHead.image = loadImage("merca.png");
}


void draw() {
  background(255);

  /// For testing purposes only ///
  //endSlate();
  /////////////////////////////////

  switch(currentState) {
  case BEGIN:
    playButton();
    //print("BEGIN");
    break;
  case STATIC:
    staticSound.play();
    staticScreen();
    //print("STATIC");
    count++;
    if (count >= 75) {
      staticSound.close();
      count = 0;
      currentState = ProjectState.PLAYING;
    }
    break;
  case PLAYING:
    count++;
    //print("PLAYING");
    song.play();
    videoHeckYa();
    if (count >= 2600) {
      currentState = ProjectState.END;
    }
    break;
  case END:
    //print("END");
    endSlate();
    break;
  }
  //println(count);
}
