PImage Logo;
PImage On1;
PImage On2;
PImage PlayButton;
PImage ForwardButton;
PImage BackButton;
PImage PauseButton;

void setup()
{
 size(1200, 660);
 
 Logo = loadImage("Jukeboxlogo.png");
 On1 = loadImage("OnButton1.png");
 On2 = loadImage("OnButton2.png");
 PlayButton = loadImage("PlayButton.png");
 ForwardButton = loadImage("ForwardButton.png");
 BackButton = loadImage("BackButton.png");
 PauseButton = loadImage("PauseButton.png");
}

int state = 1;
int size1 = 70;
int size2 = 50;
  
void draw()
{ 
  if(state == 1)
  {
    splashscreen();
  }
  
  if(state == 2)
  {
    Player();
  }
}
