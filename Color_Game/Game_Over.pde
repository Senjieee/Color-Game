void gameOver() {
  Music.rewind();
  background(red);
  fill(white);
  textSize(100);
  text("Game Over", width/2, 170);
  textSize(60);
  text("Score:" + score, width/2, 300);
  text("Best:" + best, width/2, 380);
  circleButton(650, 450);
  
  if (touchingCircle(650, 450, 85)) {
    start = tactile2;
  } else {
    start = black;
  }
  
  x = -100;
}

void gameOverClicks() {
  if (touchingCircle(650, 450, 85)) {
    mode = intro;
    score = 0;
  }
}
