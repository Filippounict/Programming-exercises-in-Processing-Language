class Casetta extends Casa{
  
  Casetta(float posX,float posY,float velX,color bi,int l){
    super(posX,posY,velX,bi,l);
  }
  
    void move(){
    posX-=velX;
  }
  
  void bounce(){
    if(posX<=0+l/2)
      posX=width-l/2;
  }
  
  void display(){
    stroke(255);
    strokeWeight(5);
    fill(0);
    rect(posX,posY,l,l);
    line(posX-2,posY,posX+l/2,posY-10);
    line(posX+2+l,posY,posX+l/2,posY-10);
    strokeWeight(8);
    line(posX+l/2,posY+l-1, posX+l/2, posY+l-8);
  }
  void run(){
    move();
    bounce();
    display();
  }
  
  
  
  
}
