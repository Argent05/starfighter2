class enemyTurret extends GameObject {
  int cooldown, threshold;

 enemyTurret() {
    super(random(width), -20, 0, 6, 30, #F25F5F, 4);


  
  }
  void act() {

    super.act();
    //shoot
    if (cooldown <50){
     cooldown++;
     
     if(cooldown == 50){
       cooldown= 0;
       
     }
      
    }
    if (cooldown == 0){
      
     object.add(new EnemyBeam(x, y, 0, 40));
     
    }
    //stops the position
   if (y > 100){
    y= 100; 
     
   }


    //managing the gun
   

       // object.add(new EnemyBullet(x, y, 0, 40));
       
       
  
      
    
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
          object.add(new gunPowerup(x,y,2,2));
          
        }
      }
      i++;
      
  

    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
  
 
   
  }
  
   void show() {
    fill(0);
    circle(x,y,50);
    
  }
}
