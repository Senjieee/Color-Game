//Johnny Geng
//1-2
//Oct 3 2022
//Color Game

color red = color(255, 0, 0);
color blue = color(24, 0, 255);
color yellow = color(255, 247, 0);
color green = color(0, 255, 44);
color orange = color(255, 132, 0);
color purple = color(195, 0, 255);
color grey = color(59, 53, 54);
color black = color(0);
color white = color(255);

int mode;
final int intro = 0;
final int game = 1;
final int gameOver = 2;

void setup() {
  size(800, 800);
  mode = intro;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameOver) {
    gameOver();
  } else {
    println("Error: Mode = " + mode);
  }
}
