class GreatShield extends Shield{
  float scale=0.5;
  float h2;
  boolean switchingScale;
  GreatShield(float posX,float posY, float velX, float h2,float scale){
    super(posX,posY,velX,h2);
    this.scale=scale;
  }
  
  void display(){
    stroke(255,255,0);
    fill(255,0,0);
    //ellipse(posX,posY,40,40);
    triangle(posX,posY,posX-h2,posY+h2, posX+h2, posY+h2);
    h2=int(h*scale);
    variaz();
  }
  
  void variaz(){
       if(switchingScale){
      scale=scale-0.05;
      if(scale<0.5){
        switchingScale=false;
        scale=0.5;
      }
    }
    else{
      scale=scale+0.05;
      if(scale>2){
        switchingScale=true;
        scale=2;
      }
    }
  }
  
  void run(){
    move();
    bounce();
    display();
    variaz();
  }
  
  
  
}
