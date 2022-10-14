//Johnny Geng
//1-2
//Oct 3 2022
//Color Game

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

PFont WashYourHand;

PImage[] gif;
int numberOfFrames;
int f;
float c;

Minim minim;
AudioPlayer Music, Failure, Success;

color red = color(255, 0, 0);
color blue = color(24, 0, 255);
color yellow = color(255, 247, 0);
color green = color(0, 255, 44);
color orange = color(255, 132, 0);
color purple = color(195, 0, 255);
color grey = color(59, 53, 54);
color black = color(0);
color white = color(255);
color tactile2 = color(209, 199, 107);
color tactile;
color start;

int mode;
final int intro = 0;
final int game = 1;
final int gameOver = 2;

int score, best;

int randomWord = (int) random(0, 6);
int randomColor = (int) random(0, 6);

String[] words = {"RED", "BLUE", "YELLOW", "GREEN", "ORANGE", "PURPLE"};
color[] colors = {red, blue, yellow, green, orange, purple};

void setup() {
  size(800, 650);
  mode = intro;
  rectMode(CENTER);
  textAlign(CENTER, CENTER);
  
  WashYourHand = createFont("WashYourHand.ttf", 200);
  textFont(WashYourHand);
  
  minim = new Minim(this);
  Music = minim.loadFile("MUSIC.mp3");
  Failure = minim.loadFile("FAILURE.wav");
  Success = minim.loadFile("SUCCESS.wav");
  
  numberOfFrames = 12;
  gif = new PImage[numberOfFrames];
  
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_"+i+"_delay-0.06s.png");
    i = i + 1;
  }
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
  
  c = random(1, 60);
  if (c > 0 && c < 11) tactile = red;
  if (c > 10 && c < 21) tactile = blue;
  if (c > 20 && c < 31) tactile = yellow;
  if (c > 30 && c < 41) tactile = green;
  if (c > 40 && c < 51) tactile = orange;
  if (c > 50 && c < 61) tactile = purple;
}

boolean touchingSquare(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    return true;
  } else {
    return false;
  }
}

boolean touchingCircle(int x, int y, int r) {
  if (dist(x, y, mouseX, mouseY) < r) {
    return true;
  } else {
    return false;
  }
}

void circleButton(int x, int y) {
  pushMatrix();
  translate(x, y);
  strokeWeight(5);
  stroke(start);
  fill(white);
  circle(0, 0, 150);
  fill(start);
  rect(-15, 0, 80, 20);
  triangle(50, 0, 20, -20, 20, 20);
  popMatrix();
}
