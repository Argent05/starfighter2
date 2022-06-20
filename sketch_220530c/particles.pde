class particles extends GameObject{
  float timer;
  
 particles(float x, float y,float vx,float vy) {
    super(x,y,random(vx+2),random(vy +2),13,#FF03C9,1);
   timer =100;
   
 }
  
  void act() {
    x = x + vx;
    y= y + vy;
    timer--;
    if (timer <0) lives = 0;
  }
  
  void show(){
   fill(#4432ED);
   
    square(x, y, size);
    
    
  }

  
  
  
  
  
  
  
  
  
  
}
