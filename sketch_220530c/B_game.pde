void game() {

 counter++;
 

 if (counter == 1000){
  GameLevel = 2; 
   
 }
 
  if (counter == 1000){
  GameLevel = 2; 
   
 }
  
  

  

  if (GameLevel == 2 && timer123 <100) {      //why isn't this showing

    timer123++;
    textSize(60);
    text("GAME LEVEL 2", width/2-200, height/2);
  }
  fill(#9C95DC, 90);
  rect(width/2, height/2, width, height);

  addObjects();
  gameEngine();
  debug();



  player1.show();
  player1.act();
  fill(255);
  
  
      

}


void addObjects() {
  object.add(0, new Star());
  if (GameLevel == 1) { 
    if (frameCount % 13 == 0) object.add(new Enemy());
    if (frameCount % 70 == 0) object.add(new Destroyer());
    if (frameCount % 200 == 0) object.add(new Death());
  }

  if (GameLevel == 2) {
    if (frameCount % 10 == 0) object.add(new Enemy());
    if (frameCount % 70 == 0) object.add(new Destroyer());
    if (frameCount % 100 == 0) object.add(new Death());
    if (frameCount % 100 == 0) object.add(new enemyTurret());
  }

  if (GameLevel == 3) {
    if (frameCount % 10 == 0) object.add(new Enemy());
    if (frameCount % 70 == 0) object.add(new Destroyer());
    if (frameCount % 100 == 0) object.add(new Death());
    if (frameCount % 100 == 0) object.add(new enemyTurret());
  }
}

void gameEngine() {
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
}
void debug() {
  textSize(30);
  fill(0);
  text(frameRate, 20, 20);
  text(object.size(), 20, 40);
  text("Lives: " + player1.lives, 20, 680);
}

void gameClicks() {


  if (player1.teleport >=1) {
    player1.x = mouseX;
    player1.y = mouseY;
  }
}
