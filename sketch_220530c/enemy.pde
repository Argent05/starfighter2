class Enemy extends GameObject {
  int cooldown, threshold, timer;

  Enemy() {
    super(random(width), -20, 0, 3, 30, #D1D1D1, 1);


    threshold = 30;
    cooldown = threshold;
  }
  void act() {
    super.act();
    //shoot



    //managing the gun
    cooldown++;
    if (cooldown >= threshold) {

      object.add(new EnemyBullet(x, y, 0, 10));
   //   object.add(new EnemyBullet(player1.x, player1.y, 0, 2)); //starts from player
//object.add(new EnemyBullet(x, y, -10, 10));   // meteor bullet
      cooldown= 0;
    }
    //collisions
    int i = 0;
    while ( i < object.size()) {
      GameObject obj = object.get(i);
      if (obj instanceof Bullet) {
        if (collidingWith(obj)) {
          
          lives--; 
          obj.lives = 0;  // bullet disappears 
          object.add(new particles(x,y,0,2));
          object.add(new particles(x,y,0,5));
          object.add(new particles(x,y,3,2));
          object.add(new particles(x,y,8,2));
          object.add(new particles(x,y,2,2));
          
        }
      }
      i++;
      
  

    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
  }
  
  
  
 
}
