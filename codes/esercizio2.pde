PImage Imm, I;

void setup(){
  size(512, 512);
  background(0);
  Imm= loadImage("lena.png");
  
  I = wow(Imm);
  
  image(I, 0, 0);
}

void draw(){
}

PImage wow(PImage I){
  PImage T = Imm.copy();
  float f = random(0, 2);
  float r, g, b;
  for(int i=0; i<Imm.width;i++){
     for(int j=0;j<I.height;j++){
       if(i>0 && i<width/3){
         T.set(i,j,I.get(i+(width-(width/3)),j));
       }
       if(i>(width-(width/3)) && j< width){
         T.set(i, j, I.get(i-(width-(width/3)), j));
               }
            }
      }
  
  for(int i=0; i < Imm.width; i++){
     for(int j=0;j< Imm.height; j++){
         r = red(T.get(i,j)); 
         g = green(T.get(i,j));
         b = blue(T.get(i,j));
         if(i > 0 && i < width/3){
           T.set(i, j, color(r/f,g,b));
         }
         if(i > (width-(width/3)) && i<width){
           T.set(i, j, color(r*f,g,b));
         }
     }
  }
  return T;
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    I = wow(Imm);
  }
  image(I, 0, 0);
}
