void gameover() {
  
  background(255,0,0);
  textSize(60);
  text("GAMEOVER",width/2-200,height/2);
  textSize(35);
  text("Game level reached :" + GameLevel,width/2-230,height/2+50);

}

void gameOverClicks() {
 mode = INTRO;
GameLevel = 1;
}
