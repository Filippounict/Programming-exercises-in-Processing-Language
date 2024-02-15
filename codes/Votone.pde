class Votone extends Voto{
  Votone(float posX,float posY, float velX, int l, float voto){
    super(posX,posY,velX,l,voto);
  }
  
  void move(){
  }
  
  void display(){
    stroke(255);
    strokeWeight(4);
    noFill();
    textSize(28);
    text(int(voto),posX,posY+24);
    if(int(voto)>24){
      text("LODE",posX,posY+50);
    }
    
    rect(posX,posY,l,l);
  }
  
  
  
  
  
}
