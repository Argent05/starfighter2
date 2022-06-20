class EnemyBeam extends GameObject{
  
 EnemyBeam(float x, float y,float vx,float vy){
   
  super(x,y,vx,vy,10,#FF03C9,1);



 }
  void act(){
   super.act();
   if (offScreen()) lives = 0;
  
    
    
  }
  
  void show(){
   fill(255);
   square(x,y,size);
    
  }
}
