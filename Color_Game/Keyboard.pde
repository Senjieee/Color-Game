void keyPressed() {
  if (mode == game) {
    gamePress();
  }
  if (keyCode == LEFT) lkey = true;
  if (keyCode == RIGHT) rkey = true;
}

void keyReleased() {
  if (mode == game) {
    gamePress();
  }
  if (keyCode == LEFT) lkey = false;
  if (keyCode == RIGHT) rkey = false;
}
