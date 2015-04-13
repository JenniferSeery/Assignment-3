import ddf.minim.*;
int s;
//for frequency spectrum
import ddf.minim.analysis.*;

Minim minim;
FFT fft; //frequency spectrum stuff

int current;
boolean a = true;

PImage Logo;
PImage On1;
PImage On2;
PImage PlayButton;
PImage ForwardButton;
PImage BackButton;
PImage PauseButton;

String songNumber;
AudioPlayer[] songs = new AudioPlayer[6]; //make 21 when all mp3 files are added
AudioMetaData[] meta = new AudioMetaData[6];

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

 
  minim = new Minim(this);
  // this loads mysong.wav from the data folder
  
  for (int i = 0 ; i < songs.length; i++) 
  {  
    songNumber = nf(i,2) + ".mp3";  
    songs[i] = minim.loadFile(songNumber); 
    meta[i] = songs[i].getMetaData();  
  
   // println("File Name :" + meta[i].fileName());
    //println("Title :" + meta[i].title());
    //println("Author :" + meta[i].author());
    //println("Genre:" + meta[i].genre());
  }
  
   s = (int)random(0, 5);
   println("File Name :" + meta[s].fileName());
   println("Title :" + meta[s].title());
   println("Author :" + meta[s].author());
   println("Genre:" + meta[s].genre());
   
  //song = minim.loadFile("3.mp3", 2048); //2048 is length of the sample buffers
  
  //FFT needs to know how long the audio buffers its gonna be analyzing are
  //also needs to know the sample rate
  fft = new FFT(songs[s].bufferSize(), songs[s].sampleRate());
  
   //first set of colours
  for(int x = 15 ; x < width ; x += 20)
  {
    if(x == 195)
    {
      x = ((width/6)*5)+15;
    }
    for(int y = (int)random(30, 200) ; y < (int)random(300, height) ; y += 25)
    {
      float bright = random(.5, 3);
      int a = 50;
      int b = 200;
          if(x > 0 && x < width/4)
          {
              light.add(new Lights(x, y, color(38*bright, 221*bright, 12*bright)));
          }

          if(x > (width/4)*3 && x < width)
          {
              light.add(new Lights(x, y, color(12*bright, 195*bright, 221*bright)));
          } 
      }
  }
  
  for(int x = 195 ; x < ((width/6)*5) ; x += 20)
  {
    for(int y = (int)random(10, 30) ; y < height/10 ; y += 20)
    {
       float bright = random(0.5, 2);
          if(x >= 195 && x < ((width/6)*5))
          {
              light.add(new Lights(x, y, color(221*bright, 12*bright, 169*bright)));
          }
    }
  }

  for (int i = 0 ; i < 50 ; i ++)
  {  
    addSequence();
  }
}

int state = 1;
int size1 = 70;
int size2 = 50;

ArrayList<Lights> light = new ArrayList<Lights>();
ArrayList<Integer> sequence = new ArrayList<Integer>();

void addSequence()
{
  sequence.add(new Integer((int)random(1,200)));
  sequence.add(new Integer((int)random(200, 400)));
}
  
void draw()
{ 
  if(state == 1)
  {
    splashscreen();
  }
  
  if(state == 2)
  {
    songs[s].play();
    Player();
  }
}

void mousePressed()
{
  
  //check for mouse click on all three buttons
  if(mouseX > (width/2)-size1/2 && mouseX < (width/2)+size1/2 && mouseY > (height-50)-size1/2 && mouseY <(height-50)+size1/2)
  {
    if(a == true)
    {
      image(PlayButton, width/2, height-50, size1, size1);
      a = false;
      songs[s].pause(); 
      noLoop();
    }
    else    
    {
      image(PauseButton, width/2, height-50, size1, size1);
      a = true;
      songs[s].play(); 
      loop();
    }
  } 
   //ellipse(width/4, height-50, size2, size2);
  if(mouseX > (width/4)-size2/2 && mouseX < (width/4)+size2/2 && mouseY > (height-50)-size2/2 && mouseY < (height-50)+size2/2)
  {
    image(On1, width/4, height-50, size2, size2);
    exit(); 
  }
  
  if(mouseX > (width/4)*3-50 && mouseX < ((width/4)*3-50)+120 && mouseY > height-75 && mouseY < (height-75)+size2)
  {
     state = 3;
     Mainmenu();
  }
  
  //rect((width/4)*3, (height/3)*2, 100, 100);
  if(mouseX > (width/4)*3 && mouseX < ((width/4)*3)+100 && mouseY > (height/3)*2 && mouseY < ((height/3)*2)+100)
  {
    if(state == 1)
    {
      image(On2, (width/4)*3, (height/3)*2, 100, 100);
      state += 1;
    }
  }
  //  image(ForwardButton, width/2+100, height-50, 50, 50);
  if(mouseX > (width/2)+70 && mouseX < (width/2)+130 && mouseY > height-70 && mouseY < height-20)
  {
    songs[s].pause();
    songs[s].rewind();
    if(s == songs.length-1)
    {
        s = 0;
    }
    else
    {
       s += 1; 
    }
    songs[s].play();
  }
  
   // image(ForwardButton, width/2+ 100, height-50, 50, 50);
  //image(BackButton, width/2- 100, height-50, 50, 50);
  if(mouseX > (width/2)-130 && mouseX < (width/2)-70 && mouseY > height-70 && mouseY < height-20)
  {
      songs[s].pause();
      songs[s].rewind();
      if(s == 0)
      {
        s = songs.length-1;
      }
      else
      {
        s -= 1; 
      }
      songs[s].play();
   }
}

