class Starfighter extends GameObject {

  int cooldown, threshold;
  float gunmode, teleport;


  Starfighter() {
    super(width/2, height/2, 0, 0, 40, #FF0000, 10);
    threshold = 4;
    cooldown = threshold;
  }

  void act() {
    super.act();
    //managing the gun
    cooldown++;
    if (space && cooldown >= threshold) {
      object.add( new Bullet());
      cooldown= 0;
    }



    //controlling starfighter
    if (up) vy = -6;
    if (down) vy = 6;
    if (right) vx = 6;
    if (left) vx= -6;


    if (!up && !down) vy = vy*0.9;
    if (!left && !right) vx = vx*0.9;



    if ( x > width) {
      x= 0;
    }
    if (x<0) {
      x=width;
    }
    if (y< 0 ) {
      y = 0;
    }

    if (y > height) {
      y = height;
    }


    int i = 0;
    while ( i < object.size()) {
      GameObject obj = object.get(i);
      if (obj instanceof EnemyBullet) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;  // bullet disappears 
          // object.add(
        }
      }
      i++;
    }

    int k = 0;
    while ( k < object.size()) {
      GameObject obj = object.get(k);
      if (obj instanceof BigBullet) {
        if (collidingWith(obj)) {
          lives = lives-2; 
          obj.lives = 0;  // bullet disappears 
          // object.add(
        }
      }
      k++;
    }
   int h = 0;
    while ( h < object.size()) {
      GameObject obj = object.get(h);
      if (obj instanceof EnemyBeam) {
        if (collidingWith(obj)) {
          lives = lives-5; 
          obj.lives = 0;  // bullet disappears 
          // object.add(
        }
      }
      h++;
    }
    int j= 0;
    while ( j< object.size()) {
      GameObject obj = object.get(j);
      if (obj instanceof powerup) {
        if (collidingWith(obj)) {
          teleport = 1;
          lives--; 
          obj.lives = 0; 
          
          // bullet disappears 
          // object.add(
        }
      }
      j++;
    }

    int z= 0;
    while ( z< object.size()) {
      GameObject obj = object.get(z);
      if (obj instanceof health) {
        if (collidingWith(obj)) {
          lives = lives +20;
          lives--; 
          obj.lives = 0;  // bullet disappears 
          // object.add(
        }
      }
      z++;
    }


    // if (lives <= 0) {
    // mode = GAMEOVER; 
    //}
  }


  void show() {
    fill(c);
    square(x, y, size);
  }
}
