color g=color(255,255,0);
color bi=color(255);
ArrayList <Cifra>a;
Cifra b;
void setup(){
  size(500,500);
  a=new ArrayList<Cifra>();
}

void draw(){
  background(0);
    for(Cifra b:a)
    b.run();
  
  
}


void keyPressed(){
  if(key>='0' && key<='4')
    a.add(new Cifra(random(50,450),random(50,450),random(2,10),g,32,key));
  if(key>='5' && key<='9')
    a.add(new Cifrotta(random(50,450),random(50,450),random(2,10),bi,32,key));
  if(key=='r')
   setup();
}
