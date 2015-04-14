void Genre()
{
  background(0);
 
  stroke(255);
  fill(38, 221, 12); 
  rect(250, height/4, 300, 100);
  rect(width/2+100, height/4, 300, 100);
  
  fill(221, 12, 169); 
  rect(250, height/4+150, 300, 100);
  rect(width/2+100, height/4+150, 300, 100);
  
  fill(12, 195, 221); 
  rect(250, height/4+300, 300, 100);
  rect(width/2+100, height/4+300, 300, 100);
  
  fill(255);
  textAlign(CENTER);
  textSize(50);
  text("Metal", 400, height/4+ 60);
  text("Pop", 400, height/4+210);
  text("Traditional", 400, height/4+360);
  text("Rock", width/2+250, height/4+ 60);
  text("Indie", width/2+250, height/4+210);
  text("Electronic", width/2+250, height/4+360);
}
