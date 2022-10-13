void intro() {
  image(gif[f], 0, 0, width, height + 300);
  println(frameCount);
  if(frameCount % 1 == 0) f = f + 1;
  if (f == numberOfFrames) f = 0;
  
  c = random(1, 60);
  if (c > 0 && c < 11) tactile = red;
  if (c > 10 && c < 21) tactile = blue;
  if (c > 20 && c < 31) tactile = yellow;
  if (c > 30 && c < 41) tactile = green;
  if (c > 40 && c < 51) tactile = orange;
  if (c > 50 && c < 61) tactile = purple;
  
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
