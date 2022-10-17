 void intro() {
  Music.play();
  image(gif[f], 0, 0, width, height + 300);
  println(frameCount);
  if(frameCount % 1 == 0) f = f + 1;
  if (f == numberOfFrames) f = 0;
  
  fill(tactile);
  textSize(100);
  text("Color Game", 400, 190);
  circleButton(650, 450);
  
  if (touchingCircle(650, 450, 85)) {
    start = tactile;
  } else {
    start = black;
  }
}

void introClicks() {
  if (touchingCircle(650, 450, 85)) {
    mode = game;
  }
}
