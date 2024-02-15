class Smile{
  float posX,posY;
  float velX;
  int d;
  Smile(float posX,float posY,float velX, int d){
    this.posX=posX;
    this.posY=posY;
    this.velX=velX;
    this.d=d;
  }
  
  void move(){
    posX+=velX;
  }
  
  void bounce(){
    if(posX>=width-d/2 || posX<=0+d/2)
      velX=-velX;
  }
  
  void display(){
    stroke(255,255,0);
    noFill();
    ellipse(posX,posY,d,d);
    strokeWeight(5);
    line(posX-8,posY,posX-8,posY-12);
    line(posX+8,posY,posX+8,posY-12);
    line(posX-8,posY+12,posX+8,posY+12);
    
  }
  
  void run(){
    move();
    bounce();
    display();
  }
  
}
