ArrayList <Voto> a;
Voto b;
void setup(){
  size(500,500);
  a=new ArrayList<Voto>();
}

void draw(){
  background(0);
  for(Voto b:a)
    b.run();
}


void mousePressed()
{
  if(mouseButton==LEFT)
    a.add(new Voto(random(50,450),random(50,450),random(2,10),30,random(18,30)));
  
  if(mouseButton==RIGHT)
    a.add(new Votone(random(50,450),random(50,450),random(2,10),30,random(18,30)));

}

void keyPressed(){
  if(key=='r' || key=='R')
    setup();
}
