void Player()
{
  background(0);

  int flash = -1;
      
    if(frameCount % 2 == 0)
    {
      flash = sequence.get(current).intValue();
      current++;
      if(current == sequence.size())
      {
        current = 0;
      }
    }

  
  for(int i = 0 ; i< light.size() ; i++)
  {
    if(i == flash)
    {
      light.get(i).display(true);
    }
    else
    {
      light.get(i).display(false);
    }
  }
  
  fill(0);
  stroke(255);
  stroke(0, 255, 0);
    /* 
      Drawing a waveform of the song: drawn by connecting neighbour values with a line
      multiply by 50 to scale the values, or else it would look more like a straight line
  */
  rect((width/8)+15, height/10, ((width/8)*6)-40, (height-100)-height/10);
  rect((width/8)+15, height-100, ((width/8)*6)-40, height);
  smooth();
  for(int i = (width/8)+15; i < ((width/8)*7)-30; i++)
  {
    line(i, 300 + songs[s].left.get(i)*200, i, 300 + songs[s].left.get(i+1)*200);
  }
  
  stroke(255);
  ellipse(width/2, height-50, 300, 80);
  imageMode(CENTER);
  image(PauseButton, width/2, height-50, size1,size1);
  image(ForwardButton, width/2+ 100, height-50, 50, 50);
  image(BackButton, width/2- 100, height-50, 50, 50);
  image(On2, width/4, height-50, 50, 50);
  rect((width/4)*3-50, height-75, 120, 50);
}
