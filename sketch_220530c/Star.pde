class Star extends GameObject {

  Star() {
  super(random(width),0,0,0,random(1,5),#FFFFFF,1);
   
    vy = size-4;
    
  }

  void act() {
    super.act();

    if (y> 800) {
      lives = 0;
    }
  }

  void show() {
    fill(c);
    noStroke();
    square(x, y, size);
  }
}
