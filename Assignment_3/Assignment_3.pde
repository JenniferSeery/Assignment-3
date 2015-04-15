import ddf.minim.*;
int s;
//for frequency spectrum
import ddf.minim.analysis.*;

Minim minim;
FFT fft; //frequency spectrum stuff
  
int current;
boolean a = true;
int butt;
char m = 'A';


PImage bg;
PImage Logo;
PImage On1;
PImage On2;
PImage PlayButton;
PImage PlayButton2;
PImage ForwardButton;
PImage BackButton;
PImage PauseButton;
PFont font;

String songNumber;
AudioPlayer[] songs = new AudioPlayer[16]; 
AudioMetaData[] meta = new AudioMetaData[16];

void setup()
{
 size(1200, 660);
 
 bg = loadImage("bg.png");
 bg.resize(width, height);
 Logo = loadImage("Jukeboxlogo.png");
 On1 = loadImage("OnButton1.png");
 On2 = loadImage("OnButton2.png");
 PlayButton = loadImage("PlayButton.png");
 PlayButton2 = loadImage("PlayButton2.png");
 ForwardButton = loadImage("ForwardButton.png");
 BackButton = loadImage("BackButton.png");
 PauseButton = loadImage("PauseButton.png");
 font = createFont("Lighthouse.ttf", 25);

 
  minim = new Minim(this);
  // this loads mysong.wav from the data folder
  
  for (int i = 0 ; i < songs.length; i++) 
  {  
    songNumber = nf(i,2) + ".mp3";  
    songs[i] = minim.loadFile(songNumber); 
    meta[i] = songs[i].getMetaData();  
  }
  
   s = (int)random(1, 16);
  
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
              squares.add(new Square(x, y, color(38*bright, 221*bright, 12*bright)));
          }

          if(x > (width/4)*3 && x < width)
          {
              squares.add(new Square(x, y, color(12*bright, 195*bright, 221*bright)));
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
              squares.add(new Square(x, y, color(221*bright, 12*bright, 169*bright)));
          }
    }
  }

  for (int i = 0 ; i < 50 ; i ++)
  {  
    addSequence();
  }
  
  int y = 20;
  int yi = 35;
  int col = width/3;
  
  for(int i = 0 ; i < songs.length ; i ++)
  { 
      button.add(new Buttons((col * 2)+250, y+5, 15, i));
      y+=yi;
  }
  
}

ArrayList<Square> squares = new ArrayList<Square>();
ArrayList<Buttons> button = new ArrayList<Buttons>();
ArrayList<Integer> sequence = new ArrayList<Integer>();

void addSequence()
{
  sequence.add(new Integer((int)random(1,200)));
  sequence.add(new Integer((int)random(200, 400)));
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
    songs[s].play();
    Player();
  }

}

void mousePressed()
{
   if(state == 1)
  {
    if(mouseX > (width/4)*3 && mouseX < ((width/4)*3)+100 && mouseY > (height/3)*2 && mouseY < ((height/3)*2)+100)
    {
      image(On2, (width/4)*3, (height/3)*2, 100, 100);
      state += 1;
    }
  }
  
  if(state == 2 || state == 4)
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
    
    if(mouseX > (width/4)-size2/2 && mouseX < (width/4)+size2/2 && mouseY > (height-50)-size2/2 && mouseY < (height-50)+size2/2)
    {
      image(On1, width/4, height-50, size2, size2);
      exit(); 
    }
    
    if(mouseX > (width/4)*3-50 && mouseX < ((width/4)*3-50)+120 && mouseY > height-75 && mouseY < (height-75)+size2)
    {
       state = 3;
       MainMenu();
    }
  
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
    
   
   if(state == 3)
   {
       if(mouseX > ((width/2)-150) && mouseX < ((width/2)+150) && mouseY > (height/4) && mouseY < ((height/4)+100))
       {
           state = 4;
           songs[s].pause();
           songs[s].rewind();
           Allsongs();
       }
       
       if(mouseX > ((width/2)-150) && mouseX < ((width/2)+150) && mouseY > ((height/4)*2) && mouseY < (((height/4)*2)+100))
       {
           state = 4;
           songs[s].pause();
           songs[s].rewind();
           Genre();
       }
       
       if(mouseX > ((width/2)-150) && mouseX < ((width/2)+150) && mouseY > ((height/4)*3) && mouseY < (((height/4)*3)+100))
       {
           state = 2;
       }
   }
   
   if(state == 4)
   {
     if(mouseX > 250 && mouseX < 550 && mouseY > (height/4) && mouseY < ((height/4)+100))
     {
           butt = 01;
           Songselection();
     }
     
     if(mouseX > 250 && mouseX < 550 && mouseY > (height/4)+150 && mouseY < ((height/4)+250))
     {
           butt = 02;
           Songselection();
    }
    
    if(mouseX > 250 && mouseX < 550 && mouseY > (height/4)+300 && mouseY < ((height/4)+400))
    {
           butt = 03;
           Songselection();
    }
    
    if(mouseX > width/2+100 && mouseX < width/2+400 && mouseY > (height/4) && mouseY < ((height/4)+100))
    {
           butt = 04;
           Songselection();
    }
    
    if(mouseX > width/2+100 && mouseX < width/2+400 && mouseY > (height/4)+150 && mouseY < ((height/4)+250))
    {
           butt = 05;
           Songselection();
    }
    
    if(mouseX > width/2+100 && mouseX < width/2+400 && mouseY > (height/4)+300 && mouseY < ((height/4)+400))
    {
           butt = 06;
           Songselection();
    }
   }
}
   
void mouseClicked()
{
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 15 && mouseY < 30)
    {
      switch(m) {
       case 'A':
        s = 0;
       break;
       case 'R': 
       s = 0;
       break;
      case 'P':
      s = 10;
       break;
      case 'T':
      s = 2;
       break;
      case 'M':
      s = 3;
       break;
      case 'I':
      s = 13;
        break;
      case 'E':
      s = 6;
      break;
      }
      state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 50 && mouseY < 75)
    {
        switch(m) {
       case 'A':
        s = 1;
       break;
       case 'R': 
       s = 1;
       break;
       case 'P':
      s = 11;
      case 'M':
      s = 4;
       break;
      case 'I':
      s = 14;
        break;
        case 'E':
      s = 7;
      break;
       }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 85 && mouseY < 100)
    {
        switch(m) {
       case 'A':
        s = 2;
       break;
       case 'R': 
       s = 8;
       break;
      case 'M':
      s = 5;
       break;
      case 'I':
      s = 15;
        break;
       }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 120 && mouseY < 135)
    {
        switch(m) {
       case 'A':
        s = 3;
       break;
       case 'R': 
       s = 9;
       break;
       }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 155 && mouseY < 170)
    {
       switch(m) {
         case 'A':
        s = 4;
       break;
       case 'R': 
       s = 12;
       break;
        }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 190 && mouseY < 205)
    {
        switch(m) {
         case 'A':
        s = 5;
       break;
        }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 225 && mouseY < 240)
    {
         switch(m) {
         case 'A':
        s = 6;
       break;
         }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 260 && mouseY < 275)
    {
         switch(m) {
         case 'A':
        s = 7;
       break;
         }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 295 && mouseY < 310)
    {
         switch(m) {
         case 'A':
        s = 8;
       break;
         }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 330 && mouseY < 345)
    {
        switch(m) {
         case 'A':
        s = 9;
       break;
        }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 365 && mouseY < 380)
    {
         switch(m) {
         case 'A':
        s = 10;
       break;
         }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 400 && mouseY < 415)
    {
         switch(m) {
         case 'A':
        s = 11;
       break;
         }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 435 && mouseY < 450)
    {
         switch(m) {
         case 'A':
        s = 12;
       break;
         }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 470 && mouseY < 485)
    {
        switch(m) {
         case 'A':
        s = 13;
       break;
        }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 505 && mouseY < 420)
    {
        switch(m) {
         case 'A':
        s = 14;
       break;
        }
        state = 2;
    } 
    if(mouseX > 1045 && mouseX < 1065 && mouseY > 540 && mouseY < 455)
    {
        switch(m) {
         case 'A':
        s = 15;
         break;
        }
        state = 2;
    }   
}

