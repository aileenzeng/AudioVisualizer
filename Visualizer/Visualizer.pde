import processing.sound.*;
SoundFile file;  //songs!
Amplitude amp;  //analyzes amplitude of sound file
float height;
int frameCount;
int x;

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
  x = 0;

}

public void draw() {
  //clears screen
  //background(255);
  fill(255, 255, 255, 64);
  rect(0, 0, 800, 600);
  frameCount++;
  height = amp.analyze();
  drawRect();
}

//draws rectangles based on the amplitude heights from sound file
public void drawRect() {
  fill(0, 104, 178);
  for (int i = 0; i < 8; i++) {
    int randNum = (int)random(-100, 100);
    rect(100 * i, 650 - (height * 1000 + randNum), 100, 150 + height * 1000 + randNum);
  }
}