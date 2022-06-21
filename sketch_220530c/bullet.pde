class Bullet extends GameObject {


  Bullet(float x, float y,float vx,float vy,float lives) {
    super(player1.x,player1.y, vx,vy,5,#FF0000,1);
  
  }

  void act() {
    super.act();
    if (x <0 || x > width || y<0 || y > height) {
      lives =0;
    }
    
    
     int i = 0;
    while ( i < object.size()) {
      GameObject Bullet = object.get(i);
      if (Bullet instanceof EnemyBullet) {
        if (collidingWith(Bullet)) {
          
          lives--; 
          Bullet.lives = 0;  // bullet disappears 
          
        }
      }
      i++;
      
  

    //remove if goes off screen
    if (offScreen()) lives = 0;
  }
    
  }


  //make a portal where if bullet collides then 

  //make a huge enemy bullet
  // add gif
  //add a sudden mode where you can't shoot 
  //slowdown
  //powerup circle aura
  //teleport with mouse click
}
