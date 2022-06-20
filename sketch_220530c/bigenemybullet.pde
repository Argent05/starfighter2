class BigBullet extends GameObject{
  
 BigBullet(float x, float y,float vx,float vy){
   
  super(x,y,vx,vy,60,#FF03C9,1);



 }
  void act(){
   super.act();
   if (offScreen()) lives = 0;
  
    
    
  }
}
