class Cifrotta extends Cifra{

  Cifrotta(float posX,float posY,float velY,color g,int d,char c){
    super(posX,posY,velY,g,d,c);
  }
  
  void move(){
    posY-=velY;
  }
  
  void bounce(){
    if(posY<=d/2)
      posY=height-d/2;
  }
  void display()
  {
    fill(0);
    stroke(255);
    strokeWeight(5);
    ellipse(posX,posY,d,d);
    fill(255);
    textSize(22);
    text(c,posX-5,posY+5);
  }
  
  void run(){
    move();
    bounce();
    display();
  }
   
}
