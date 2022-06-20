abstract class  GameObject {

  float x, y, vx, vy, size;
  color c;
  int lives, teleport, GameLevel;

  GameObject(float x, float y, float vx, float vy, float size, color c, int lives) {
    this.x = x;
    this.y = y;
    this.vx = vx;
    this.vy = vy;
    this.size = size;
    this.c = c;
    this.lives = lives;
  }

  void show() {
    fill(c);
    square(x, y, size);
  }

  void act() {
    x+= vx;
    y+= vy;
    

  }

  boolean collidingWith(GameObject obj) {
    return dist(obj.x, obj.y, x, y) < obj.size/2 +size/2;
  }
  
  boolean offScreen(){
  return x< -20 || x> width+50 || y< -50 || y> height;
  }
}
