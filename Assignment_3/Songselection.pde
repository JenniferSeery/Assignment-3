void Songselection()
{
  background(0);
  int x = 15;
  int i;
  int y = 30;
  int yi = 35;
  int col = width/3;
  
  //First button - 01 - metal
  if( butt == 1 )
  {
    for(i = 0 ; i < meta.length ; i ++)
    {
      m = 'M';
      if(meta[i].comment().equals("Metal") == true)
      {
        fill(255);
        textSize(30);
        textAlign(LEFT);
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].comment(), x + (col * 2), y);
        image(PlayButton2,(col * 2)+250, y-5, 15, 15);

         y+=yi;
      }
     
    }
  }
  
  //Second button - 02 - pop
  if( butt == 2 )
  {
    m = 'P';
    for(i = 0 ; i < meta.length ; i ++)
    {
      if(meta[i].comment().equals("Pop") == true)
      {
        textSize(30);
        textAlign(LEFT);
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].comment(), x + (col * 2), y);
        image(PlayButton2,(col * 2)+250, y-5, 15, 15);
        y+=yi;
      }
      
    }
  }
 
  //Third button - 03 - trad
  if( butt == 3 )
  {
    m = 'T';
    for(i = 0 ; i < meta.length ; i ++)
    {
      if(meta[i].comment().equals("Traditional") == true)
      {
        textSize(30);
        textAlign(LEFT);
         text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].comment(), x + (col * 2), y);
        image(PlayButton2,(col * 2)+250, y-5, 15, 15);
        y+=yi;
      }
      
    }
  }
 
   //Fourth button - 04 - rock
   if( butt == 4 )
  {
    m = 'R';
    for(i = 0 ; i < meta.length ; i ++)
    {
      if(meta[i].comment().equals("Rock") == true)
      {
        textSize(30);
        textAlign(LEFT);
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].comment(), x + (col * 2), y);
        image(PlayButton2,(col * 2)+250, y-5, 15, 15);
        y+=yi;
      }
      
    }
  }
  
  //Fifth button - 05 -  indie
   if( butt == 5 )
  {
    m = 'I';
    for(i = 0 ; i < meta.length ; i ++)
    {
      if(meta[i].comment().equals("Indie") == true)
      {
        textSize(30);
        textAlign(LEFT);
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].comment(), x + (col * 2), y);
        image(PlayButton2,(col * 2)+250, y-5, 15, 15);
        y+=yi;
      }
      
    }
  }
 
   // Sixth button - 06 - electronic
   if( butt == 6 )
  {
    m = 'E';
    for(i = 0 ; i < meta.length ; i ++)
    {
      if(meta[i].comment().equals("Electronic") == true)
      {
        textSize(30);
        textAlign(LEFT);
        text("Title: " + meta[i].title(), x, y);
        text("Author: " + meta[i].author(), x + col, y); 
        text("Genre: " + meta[i].comment(), x + (col * 2), y);
        image(PlayButton2,(col * 2)+250, y-5, 15, 15);
        y+=yi;
      }
      
    }
  }
}
