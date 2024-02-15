class Shield{
  float posX,posY;
  float velX;
  float h;
  Shield(float posX,float posY, float velX, float h){
    this.posX=posX;
    this.posY=posY;
    this.velX=velX;
    this.h=h;
  }
  
  void move(){
    posX+=velX;
  }
  
  void bounce(){
    if(posX>=width+50)
        posX=0;
    if(posX<=0-50)
      posX=width;
  }
  
  void display(){
    noStroke();
    fill(0,255,0);
    //ellipse(posX,posY,40,40);
    triangle(posX,posY,posX-50,posY+50, posX+50, posY+50);
  }
  
  void run(){
    move();
    bounce();
    display();
  }
}
