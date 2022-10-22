pig[] nugget;
void setup()
{
  size(500, 500);
  nugget = new pig[10];
  for(int i = 0; i < nugget.length; i++)
  {
    nugget[i] = new pig();
  }
}
void draw()
{
  background(#FFFFFF);
  for(int i = 0; i < nugget.length; i++)
  {
    nugget[i].show();
    nugget[i].roll();
  }
}

class pig
{
  int myX, myY, pink, black, darkPink;
  pig() 
  {
    myX = (int)(Math.random()*450);
    myY = (int)(Math.random()*450);
    pink = color(#FFB2F5);
    black = color(#000000);
    darkPink = color(#DB99D2);
  }
  void roll()
  {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
  void show()
  {
    stroke(10);
    //ears and body
    fill(pink);
    ellipse(myX-21, myY-15, 15,15);
    ellipse(myX+21, myY-15, 15,15);
    ellipse(myX, myY, 50,50);
    
    //snout
    fill(darkPink);
    ellipse(myX, myY+10, 20,15);
    
    //nostrils and eyes
    fill(black);
    ellipse(myX-4, myY+10, 2, 2);
    ellipse(myX+4, myY+10, 2, 2);
    ellipse(myX-10, myY, 5, 5);
    ellipse(myX+10, myY, 5, 5);
  }
}
