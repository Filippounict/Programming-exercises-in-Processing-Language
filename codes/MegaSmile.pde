class MegaSmile extends Smile{
    MegaSmile(float posX,float posY,float velX, int d){
      super(posX,posY,velX,d);
    }
  
  void move(){
    posX-=velX;
  }
  
  void bounce(){
    if(posX<=0+d)
      posX=width-d;
  }
  int i=0;
  void display(){
    stroke(255);
    noFill();
    ellipse(posX,posY,d,d);
    strokeWeight(5);
    line(posX-8,posY,posX-8,posY-12);
    line(posX+8,posY,posX+8,posY-12);
    line(posX-8,posY+12,posX+8,posY+12);

    

  }
}
