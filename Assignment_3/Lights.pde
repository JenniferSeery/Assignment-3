class Lights
{
  int index;
  color c;
  boolean highlighted; 
  PVector position;
  
  Lights()
  {
   this(0, 0, color(0,0,0)); //constructure chaining 
  }
  
  Lights(float x, float y, color colour)
  {
    position=new PVector(x, y);
    this.c=colour;
  }
  
  void update()
  {
    
  }
  
  void display(boolean highlighted)
  {
    float dim = 0;
    if(highlighted)
    {
      dim = 10;
    }
    else
    {
      dim = .1;
    }
    
    stroke(255*dim);
    fill(c);
    ellipse(position.x, position.y, 20, 15);
  }
}
