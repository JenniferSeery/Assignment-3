void Mainmenu()
{
  background(0);
  textSize(50);
  fill(255);
  text("Search", (width/2), (height/6));
  
  fill(38, 221, 12); 
  rect((width/2)-150, (height/4), 300, 100);
  fill(255);
  text("All Songs", (width/2), (height/2)-110);
 
  fill(221, 12, 169); 
  rect((width/2)-150, (height/4)*2, 300, 100);
  fill(255);
  text("Genre", (width/2), (height/2)+60);;
  
  fill(12, 195, 221); 
  rect((width/2)-150, (height/4)*3, 300, 100);
  fill(255);
  text("Artist", (width/2), (height/2)+220);
}

