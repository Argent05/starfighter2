final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;

ArrayList <GameObject> object;

Starfighter player1;
boolean up, down,left,right,space;
//array game

void setup() {
 rectMode(CENTER); 
 size(600,600, FX2D); 
  mode = GAME;
  
  object = new ArrayList<GameObject>();
  player1 = new Starfighter();
  object.add(player1);
  
}



void draw() {
 

  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameover();
  } else if (mode == PAUSE) {  
    pause();
  } else {
    println("?");
  }
}
  
  
  
