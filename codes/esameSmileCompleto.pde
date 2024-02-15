
ArrayList <Smile> a;
ArrayList <MegaSmile> a2;

void setup(){
  size(500,500);
  a=new ArrayList<Smile>();
  a2=new ArrayList<MegaSmile>();
}

void draw(){
  background(0);
 
 for(int i=0;i<a.size(); i++){
    a.get(i).run();
 }
 scale(1.5);
 for(int i=0;i<a2.size(); i++){
    a2.get(i).run();
 }
}

void mousePressed(){
  if(mouseButton==LEFT)
    a.add(new Smile(random(50,450), random(50,450), random(2,10),50));
  if(mouseButton==RIGHT)
    a2.add(new MegaSmile(random(50,450), random(40,400), random(2,10),50));
}

void keyPressed(){
   if (key=='r' || key=='R')
     setup();
}
