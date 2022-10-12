void mouseReleased() {
  if (mode == intro) {
    introClicks();
  } else if (mode == game) {
    gameClicks();
  } else if (mode == gameOver) {
    gameOverClicks();
  }
}
