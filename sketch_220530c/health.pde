class health extends GameObject{
  float timer;
  
 health(float x, float y,float vx,float vy) {
    super(x,y,random(vx+2),random(vy +2),13,#FF03C9,1);
   timer =200;
   
 }
  
  void act() {
 
    timer--;
    if (timer <0) lives = 0;
    
 
  }
  
  void show(){
   fill(#EFFF1A);
   
    square(x, y, size+20);
    
    
  }
}
