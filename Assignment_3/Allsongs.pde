void Allsongs()
{
  background(0);
  m = 'A';
  int x = 10;
  int i;
  int y = 30;
  int yi = 35;
  int col = width/3;
  
  for(i = 0 ; i < meta.length ; i ++)
  { 
      fill(255);
      textSize(30);
      textAlign(LEFT);
      text("Title: " + meta[i].title(), x, y);
      text("Author: " + meta[i].author(), x + col, y); 
      text("Genre: " + meta[i].comment(), x + (col * 2), y);
      y+=yi;
  }
  
  for(int j = 0 ; j < songs.length ; j++)
  {
      button.get(j).display();
  }
  
  image(On2, width/4, height-50, 50, 50);
}
