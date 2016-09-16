Bacteria [] colony;
int direction = (int)(Math.random()*4);
 //declare bacteria variables here   
 void setup()   
 {     
   size(400, 400);//initialize bacteria variables here   
   colony = new Bacteria [10];
     for (int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria();
     frameRate(20);
   }
 }   
 void draw()   
 {    
   background(0);
   for (int i = 0; i < colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
   //move and show the bacteria   
 }  
 class Bacteria    
 {     
   int myX, myY, bColor;
  
  Bacteria(){
    myX = 200;
    myY = 200;
    //bColor = (int)(Math.random()*256);//lots of java!
   }

   void move(){
     myX = myX + (int)((Math.random()*10)-5);
     myY = myY + (int)((Math.random()*10)-5);
   }

   void show(){
     noStroke();
     fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), 150);
     ellipse(myX, myY, 10, 10);
   }
 }    