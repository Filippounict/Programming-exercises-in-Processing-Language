class Voto{
  float posX,posY;
  float velX;
  float voto;
  int l;
  
  
  Voto(float posX,float posY, float velX, int l, float voto){
    this.posX=posX;
    this.posY=posY;
    this.velX=velX;
    this.l=l;
    this.voto=voto;
    }
  
  void move(){
    posX+=velX;
  }
  
  void bounce(){
    if(posX>=width-l || posX<=0)
      velX=-velX;
  }
  
  void display(){
    stroke(255,255,0);
    strokeWeight(4);
    noFill();
    textSize(28);
    text(int(voto),posX,posY+24);
   
    rect(posX,posY,l,l);
    
  }
  
  void run(){
    move();
    bounce();
    display();
  }
}
