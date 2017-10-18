import processing.sound.*;
SoundFile file;  //songs!
Amplitude amp;  //analyzes amplitude of sound file

void setup() {
  size(800, 600);  //size of window
  String path = sketchPath("DEH.mp3");
  //print(path);
  file = new SoundFile(this, path);
  file.play();

  amp = new Amplitude(this);
  amp.input(file);
  //check path
}

void draw() {
  //clears screen
  background(255);
  float size = amp.analyze() * 2000;
  drawRect(size);
  println(size + " " + amp.analyze());
  
  //rect(0, 0, size, size); 
}

void drawRect(float size) {
  println("running");
  for (int i = 0; i < 8; i++) {
    rect(100 * i, 0, 100, size);
  }
}