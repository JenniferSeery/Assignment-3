void Player()
{
  background(0);
  
  fill(0);
  stroke(255);
  stroke(0, 255, 0);
  rect((width/8)+15, height/10, ((width/8)*6)-40, (height-100)-height/10);
  rect((width/8)+15, height-100, ((width/8)*6)-40, height);
  ellipse(width/2, height-50, 300, 80);
  imageMode(CENTER);
  image(PauseButton, width/2, height-50, size1,size1);
  image(ForwardButton, width/2+ 100, height-50, 50, 50);
  image(BackButton, width/2- 100, height-50, 50, 50);
  image(On2, width/4, height-50, 50, 50);
  rect((width/4)*3-50, height-75, 120, 50);
}
