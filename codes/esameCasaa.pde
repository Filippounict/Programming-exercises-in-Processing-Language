ArrayList <Casa> a;
Casa b;
color g=color(255,255,0);
color bi=color(255);
void setup(){
  size(500,500);
  a= new ArrayList<Casa>();
}
void draw(){
  background(0);
    for(Casa b:a)
    b.run();
  
}

void mousePressed(){
  if(mouseButton==LEFT)
    a.add(new Casa(random(30,470),random(30,470),random(2,10),g,30));
  if(mouseButton==RIGHT)
    a.add(new Casetta(random(30,470),random(30,470),random(2,10),bi,30));
}

void keyPressed(){
  if(key=='r')
    setup();
}
