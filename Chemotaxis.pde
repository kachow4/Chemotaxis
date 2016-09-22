Bacteria [] colony;
 //declare bacteria variables here   
 void setup()   
 {     
   size(600, 600);//initialize bacteria variables here   
   colony = new Bacteria [200];
     for (int i = 0; i < colony.length; i++){
     colony[i] = new Bacteria();
     
   }
 }   
 void draw()   
 {    
   background(0);
   for (int i = 0; i < colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
   int x;
   if (mouseX < 100)
   {
    x = 10;
   }
   else if (mouseX < 200)
   {
    x = 20;
   }
   else if (mouseX < 300)
   {
    x = 30;
   }
   else if (mouseX < 400)
   {
    x = 40;
   }
   else if (mouseX < 500)
   {
    x = 50;
   }
   else 
   {
    x = 60; 
   }
   frameRate(x);
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
     //myX = myX + (int)((Math.random()*10)-5);
     //myY = myY + (int)((Math.random()*10)-5);
     int direction = (int)(Math.random()*4);
       if (direction == 0){
         myX = myX + 15;
       }
       else if (direction == 1){
         myX = myX - 15;
       }
       else if (direction == 2){
         myY = myY + 15;
       }
       else{
         myY = myY - 15;
       }
   }

   void show(){
     noStroke();
     fill((int)((Math.random()*256) + 100), (int)((Math.random()*256) + 100), (int)((Math.random()*256) + 100));
     //fill(255);
     ellipse(myX, myY, 10, 10);
    }
 } 

    