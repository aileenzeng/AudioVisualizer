import processing.sound.*;
SoundFile file;  //songs!
Amplitude amp;  //analyzes amplitude of sound file
float height;

public void setup() {
  size(800, 600);  //size of window
  frameRate(8);
  String path = sketchPath("DEH.mp3");
  //print(path);
  file = new SoundFile(this, path);
  file.play();

  amp = new Amplitude(this);
  amp.input(file);
  //print(file.duration());

}

public void draw() {
  //clears screen
  background(255);
  height = amp.analyze();
  drawRect();
}

//draws rectangles based on the heights
public void drawRect() {
  fill(0, 104, 178);
  for (int i = 0; i < 8; i++) {
    rect(100 * i, 400 + height * 300 + random(-100, 100), 100, 400 - (height * 300 + random(-100, 100)));
  }
}