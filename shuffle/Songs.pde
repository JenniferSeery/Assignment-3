ArrayList<MenuSong> songs = new ArrayList<MenuSong>();

//SONGS ARRAY LISTS 
void songSetup()
{
  songs.add(new MenuSong(minim.loadFile("Culture Beat           Mr. Vain.mp3")));
  songs.add(new MenuSong(minim.loadFile("Sandstorm.mp3")));
  songs.add(new MenuSong(minim.loadFile("Technotronic - Pump Up The Jam.mp3")));
  songs.add(new MenuSong(minim.loadFile("Gigi D'Agostino - L'Amour Toujours ( Official Video ).mp3")));
  songs.add(new MenuSong(minim.loadFile("Daft Punk - Technologic.mp3")));
  songs.add(new MenuSong(minim.loadFile("Warriors Dance - The Prodigy.mp3")));
}

class MenuSong
{
  AudioPlayer songs;

  MenuSong(AudioPlayer songs)
  {
    this.songs = songs;
  }
}

