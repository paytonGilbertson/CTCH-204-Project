import processing.sound.*;
SoundFile tunes;

void setup() {
    size(500, 500);
    background(204);

    tunes = newSoundFile(this, "song.mp3");
    tunes.play();
}

void draw(){

    
}
