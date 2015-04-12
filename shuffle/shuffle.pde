// SHUFFLE BASIC LAYOUT CODE 

setup ()
{
  
  minim = new Minim(this);
  songSetup();
  int i = (int) random(0, songs.size());
  player= songs.get(i).songs;
  player.play();
  
}
