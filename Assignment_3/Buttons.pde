class Buttons
{
  int x;
  int y; 
  int size;
  int value;
  
  Buttons()
  {
     this(0, 0, 0, 0); //constructure chaining 
  }
  
  Buttons(int x, int y, int size, int value)
  {
    this.x=x;
    this.y=y;
    this.size=size;
    this.value=value;
  } 
  
  
  void display()
  {
      fill(255);
      image(PlayButton2, x, y, size, size);
  }
}
