void intro(){
  image(gif[g], 0,0, width,height);
  if (frameCount % 3 ==0 )g= g+1;
  if (g==numberOfFrames) g= 0;
  fill(#FF0000);
  textSize(90);
  text("Starfighter" ,width/2-290,height/2-250);
  textSize(60);
  fill(255);
  text("Click to Start" ,width/2-230,height/2+250);
  
}




void introClicks(){
  mode = GAME;
  
}
