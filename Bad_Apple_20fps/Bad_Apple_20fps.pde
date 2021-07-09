import processing.sound.*;
SoundFile BadMusic;

int i=0;

PImage [] BadApple = new PImage[4383];

void setup() {
  size(480,360);
  frameRate(20);
  background(0);
  for (i=0; i<BadApple.length; i++) {
    BadApple[i] = loadImage(i+1+".jpg");
  }
  i=0;
  BadMusic = new SoundFile(this, "Bad Apple.mp3");
  BadMusic.play();
}

void draw() {
  image(BadApple[i], 0, 0);
  println(i);
  i++;
  if (i==4383) {
    noLoop();// i=0; とするとまた1枚めから
  }
}
