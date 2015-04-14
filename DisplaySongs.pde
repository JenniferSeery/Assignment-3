void displaySongs()
{
  int x = 50;
  int i;
  int y = 10;
  int yi = 20;
  int col = width/3;
  
  //First button - 01 - metal
  if( butt == 1 )
  {
    for(i = 0 ; i < meta.length ; i ++)
    {
      if( meta[i].genre() == "Metal")
      {
        text("Title: " + meta[i].title(), x , y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].genre(), x + (col * 2), y);
      }
      y+=yi;
    }
  }
  
  //Second button - 02 - pop
  if( butt == 2 )
  {
    for(i = 0 ; i < meta.length ; i ++)
    {
      if( meta[i].genre() == "Pop")
      {
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].genre(), x + (col * 2), y);
      }
      y+=yi;
    }
  }
 
  //Third button - 03 - trad
  if( butt == 3 )
  {
    for(i = 0 ; i < meta.length ; i ++)
    {
      if( meta[i].genre() == "Traditional")
      {
         text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].genre(), x + (col * 2), y);
      }
      y+=yi;
    }
  }
 
   //Fourth button - 04 - rock
   if( butt == 4 )
  {
    for(i = 0 ; i < meta.length ; i ++)
    {
      if( meta[i].genre() == "Rock")
      {
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].genre(), x + (col * 2), y);
      }
      y+=yi;
    }
  }
  
  //Fifth button - 05 -  indie
   if( butt == 5 )
  {
    for(i = 0 ; i < meta.length ; i ++)
    {
      if( meta[i].genre() == "Indie")
      {
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].genre(), x + (col * 2), y);
      }
      y+=yi;
    }
  }
 
   // Sixth button - 06 - electronic
   if( butt == 6 )
  {
    for(i = 0 ; i < meta.length ; i ++)
    {
      if( meta[i].genre() == "Electronic")
      {
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].genre(), x + (col * 2), y);
      }
      y+=yi;
    }
  }

}
