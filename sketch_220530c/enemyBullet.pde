class EnemyBullet extends GameObject{
  
 EnemyBullet(float x, float y,float vx,float vy){
   
  super(x,y,vx,vy,10,#FF03C9,1);



 }
  void act(){
   super.act();
   if (offScreen()) lives = 0;
  
    
    
  }
}



// will make the x and y same as the ship for x seconds 
