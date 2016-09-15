 Bacteria bob = new Bacteria();
 //declare bacteria variables here   
 void setup()   
 {     
 	size(300, 300);//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	bob.move();
 	bob.show();//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, bColor;
	
	Bacteria(){
		myX = 200;
 		myY = 200;
 		bColor = (int)(Math.random()*256);//lots of java!
 	}

 	void move(){
 		myX = (int)((Math.random()*10)-5);
 		myY = (int)((Math.random()*10)-5);
 	}

 	void show(){
 		fill(bColor);
 		ellipse(myX, myY, 10, 10);
 	}
 }    