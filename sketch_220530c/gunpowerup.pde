class gunPowerup extends GameObject{
  float timer;
  
 gunPowerup(float x, float y,float vx,float vy) {
    super(x,y,random(vx+2),random(vy +2),13,#FF03C9,1);
   timer =300;
   
 }
  
  void act() {
 
    timer--;
    if (timer <0) lives = 0;
    
 
  }
  
  void show(){
   fill(#05FF24);
   
    square(x, y, size+20);
    
    
  }
}
