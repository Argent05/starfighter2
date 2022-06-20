final int INTRO = 1;
final int GAME  = 2;
final int GAMEOVER = 3;
final int PAUSE = 4;
int mode = GAME;
int GameLevel;
float counter;
int timer123;
ArrayList <GameObject> object;

Starfighter player1;
boolean up, down, left, right, space;

PFont thefont;
PImage[] gif;
int numberOfFrames;  //8
int g;
void setup() {
  rectMode(CENTER); 
  textMode(CENTER);
  size(800, 800); 
  mode = INTRO;
  GameLevel = 1;
  timer123= 1;
  object = new ArrayList<GameObject>();
  player1 = new Starfighter();
  object.add(player1);
  counter = 1;

  numberOfFrames = 50;
  gif = new PImage[numberOfFrames];
  int f = 0;
  while ( f <numberOfFrames) {
    gif[f] = loadImage("frame_" +f+"_delay-0.07s.gif");
    f++;
  }
  thefont = createFont("walkthemoon.ttf", 128);
  textFont(thefont);
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
