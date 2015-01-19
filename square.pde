int squareMax = 4;

class Square
{
  int index;
  color colour;
  boolean highlighted = false;
  PVector position;
  float sizeX, sizeY;

  Square(color colour, PVector origin)
  {
    this(0,0,color(0,0));//calls next constructor, constructor chaining
  }

  Square(float x, float y, color colour)
  {
     position = new PVector(0, 0);
     this.colour = colour;
  }

  void update()
  {
    
  }

  void display(boolean high)
  {
    float dim = 0;
    if( high)
    {
       dim = 1; 
    }
    else 
    {
       dim = 0.5; 
    }
    stroke(colour * dim);
    fill(colour * dim);
  }
}

void squareInit()
{
  for (int i = 0; i< squareMax; i++)
  {
    float x, y;

    Square sq = new Square();
    sq.sizeX = width/2;
    sq.sizeY = height/2;
    
    if(i+ 1 < squareMax)
    {
       y = 0; 
    }
    else
    {
      y = sq.sizeY;
    }
  }
}

