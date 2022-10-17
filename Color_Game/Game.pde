void game() {
  fill(white);
  stroke(white);
  rect(600, 325, 400, 650);
  fill(black);
  stroke(black);
  rect(200, 325, 400, 650);
  fill(white);
  textSize(80);
  text("MATCH", 200, 160);
  fill(black);
  text("MATCHN'T", 600, 160);
  fill(colors[randomColor]);
  textSize(100);
  text(words[randomWord], x, height/2);
  x = x + 10;
  
  if (x > 950) {
    incorrect();
  }
  if (score > best) best = score;
  
  if (randomWord == randomColor) {
    match = true;
  } else {
    match = false;
  }
}

void gameClicks() {
  if(mouseX < 400 && match == true || mouseX > 400 && match == false) {
    correct();
  } else {
    incorrect();
  }
}

void gamePress() {
  if(lkey == true && match == true || rkey == true && match == false) {
    correct();
  } else if(match == true && rkey == true || match == false && lkey == true) {
    incorrect();
  }
}
