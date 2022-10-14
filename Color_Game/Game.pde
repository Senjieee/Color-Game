void game() {
  background(white);
  fill(colors[randomColor]);
  textSize(100);
  text(words[randomWord], width/2, height/2);
}

void gameClicks() {
  mode = gameOver;
}
