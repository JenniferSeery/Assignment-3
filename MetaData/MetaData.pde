import ddf.minim.*;

//for frequency spectrum
import ddf.minim.analysis.*;

Minim minim;
AudioPlayer song;
AudioMetaData meta;
FFT fft; //frequency spectrum stuff

void setup()
{
  size(1024, 500);
 
  minim = new Minim(this);
  
 
  // this loads mysong.wav from the data folder
  song = minim.loadFile("04.mp3", 2048); //1024 is length of the sample buffers
  meta = song.getMetaData();
  song.play();
  
  //FFT needs to know how long the audio buffers its gonna be analyzing are
  //also needs to know the sample rate
  fft = new FFT(song.bufferSize(), song.sampleRate());
  
   println("File Name :" + meta.fileName());
    println("Title :" + meta.title());
    println("Author :" + meta.author());
     println("Genre:" + meta.genre());
    println("Date :" + meta.date());
    println("Album :" + meta.album());
    println("Comment: " + meta.comment());
  
  //println(song.bufferSize());
  //println(song.sampleRate());
  
  
}

void draw()
{
  background(0);
  stroke(0, 255, 0);
  /* 
      Drawing a waveform of the song: drawn by connecting neighbour values with a line
      multiply by 50 to scale the values, or else it would look more like a straight line
  */
  smooth();
  for(int i = 250; i < song.bufferSize() /3; i++)
  {
    
    line(i, 250 + song.left.get(i)*100, i+1, 251 + song.left.get(i+1)*100 );
    
   
    
    
    //line(i, 250 + song.right.get(i)*50, i+1, 250 + song.right.get(i+1)*50);
  }
  
}
