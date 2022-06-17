class Starfighter extends GameObject {

  int cooldown, threshold;

  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 3);
    threshold = 30;
    cooldown = threshold;
  }

  void act() {
    super.act();
    //managing the gun
    cooldown++;
    if (space && cooldown >= threshold){
      object.add( new Bullet());
      cooldown= 0;
    }



    //controlling starfighter
    if (up) vy = -5;
    if (down) vy = 5;
    if (right) vx = 5;
    if (left) vx= -5;
    

    if (!up && !down) vy = vy*0.9;
    if (!left && !right) vx = vx*0.9;



    if (x<0 || x > width) {
      x= 0;
    }
    if (y< 0 || y> height) {
      y = 0;
    }
  }




  void show() {
    fill(c);
    square(x, y, size);
  }
}
