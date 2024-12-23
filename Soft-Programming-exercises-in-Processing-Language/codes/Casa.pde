class Casa{
  float posX,posY;
  float velX;
  color g;
  int l;
  Casa(float posX,float posY,float velX,color g,int l){
    this.posX=posX;
    this.posY=posY;
    this.velX=velX;
    this.g=g;
    this.l=l;
  }
  
  void move(){
    posX+=velX;
  }
  
  void bounce(){
    if(posX>=width-l/2 || posX<=0+l/2)
      velX=-velX;
  }
  
  void display(){
    stroke(255);
    strokeWeight(5);
    fill(0);
    rect(posX,posY,l,l);
    line(posX-2,posY,posX+l/2,posY-10);
    line(posX+2+l,posY,posX+l/2,posY-10);
  }
  void run(){
    move();
    bounce();
    display();
  }
}
