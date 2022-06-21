class Death extends GameObject {
  int cooldown, threshold;

 Death() {
    super(-20, random(height), 6, 0, 30, #F25F5F, 1);


    threshold = 10;
    cooldown = threshold;
  }
  void act() {
    super.act();
    //shoot



    //managing the gun
    cooldown++;
    if (cooldown >= threshold) {

        object.add(new EnemyBullet(x, y, 19, 0));
        
       
  
      cooldown= 0;
    }
    //collisions
    int i = 0;
    while ( i < object.size()) {
      GameObject obj = object.get(i);
      if (lives>0 && obj instanceof Bullet) {
        if (collidingWith(obj)) {
          lives--; 
          obj.lives = 0;  // bullet disappears 
          object.add(new particles(x,y,-9,2));
          object.add(new particles(x,y,-5,5));
          object.add(new particles(x,y,3,2));
          object.add(new particles(x,y,8,2));
          object.add(new particles(x,y,2,2));
          object.add(new particles(x,y,3,9));
          object.add(new particles(x,y,8,15));
          object.add(new powerup(x,y,8,15));
          
        }
      }
      i++;
      
  

    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
  
   
  }
}
