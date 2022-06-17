void game() {

  object.add(new Star());
  background(0);

  int i = 0;
  while ( i<object.size()) {
    GameObject s  = object.get(i);
    s.act();
    s.show();
    if (s.lives == 0) {
      object.remove(i);
    } else { 
      i++;
    }
  }
  player1.show();
  player1.act();
  fill(255);
  text(frameRate, 20, 20);
  text(object.size(), 20, 40);
}




void gameClicks() {
}
