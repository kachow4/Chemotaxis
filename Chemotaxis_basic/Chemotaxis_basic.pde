Bacteria [] colony1;
Bacteria [] colony2;
void setup()   
{     
  size(600, 600);   
  colony1 = new Bacteria [100];
  for (int i = 0; i < colony1.length; i++)
  {
    colony1[i] = new Bacteria();
    frameRate(20);
  }
}   
void draw()   
{
  background(0);
  for (int i = 0; i < colony1.length; i++){
  colony1[i].move();
  colony1[i].show();
   //move and show the bacteria 
  }
}

class Bacteria    
{     
  int myX, myY, bColor;
  Bacteria()
  {
    myX = 300;
    myY = 300;
    bColor = color(255, 0, 0);
  }
  void move()
  {
    myX = myX + (int)((Math.random()*10) - 5);
    myY = myY + (int)((Math.random()*10) - 5);
  }
   
  void show()
  {
    noStroke();
    fill(bColor);
    ellipse(myX, myY, 20, 20);
  }
}