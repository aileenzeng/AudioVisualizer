import processing.sound.*;
SoundFile file;

void setup() {
  String path = sketchPath("DEH.mp3");
  print(path);
  file = new SoundFile(this, path);
  file.play();
  print("hi");
  //check path
}

void draw() {
  //file.play();
  //file.stop();
}