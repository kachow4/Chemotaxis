Bacteria [] colony;

 //declare bacteria variables here   
 void setup()   
 {     
   size(600, 600);//initialize bacteria variables here   
   colony = new Bacteria [10];
     for (int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria();
     frameRate(10);
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
    myX = 300;
    myY = 300;
    //bColor = (int)(Math.random()*256);//lots of java!
   }

   void move(){
     myX = myX + (int)((Math.random()*10)-5);
     myY = myY + (int)((Math.random()*10)-5);
     /*int direction = (int)(Math.random()*4);
       if (direction == 0){
         myX = myX + 10;
       }
       else if (direction == 1){
         myX = myX - 10;
       }
       else if (direction == 2){
         myY = myY + 10;
       }
       else{
         myY = myY - 10;
       }*/
   }

   /*void eat()
   {
    if (get(myX, myY) != color(0))
    {
       itsAlive = false; 
    }
   }
*/
   void show(){
     noStroke();
     fill((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256), 100);
     //fill(255);
     ellipse(myX, myY, 20, 20);
     fill(0);
     ellipse(mouseX, mouseY, 50, 50);
  }
 }