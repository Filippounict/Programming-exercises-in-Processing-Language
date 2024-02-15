
Shield a;
GreatShield b;
void setup(){
  size(256,512);
  a=new Shield(random(0,256),random(0,256),random(-5,5),50);
  b= new GreatShield(random(0,256),random(256,512),random(-5,5),50,0.5);
}

void draw(){
  background(0);
  a.run();
  b.run();
}
