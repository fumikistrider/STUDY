class Ornament extends Motion
{
  PImage img;
  int size;
  int movex, movey;
  
  Ornament(int _x, int _y){
    x = _x;
    y = _y;
    life = (int)random(100,300);
    
    int item = (int)random(0,2);
    
    if( item == 0){
      img = loadImage("snow.png");
    }else if(item == 1){
      img = loadImage("supersanta.png");
    }
    
    size = (int)random(10,100);
    movex = (int)random(-5, 5);
    movey = (int)random(-5, 5);
  }
  
  void draw(){
    imageMode(CENTER);
    
    pushMatrix();
    translate(x, y);
    image(img, 0, 0, size, size);
    popMatrix();
    
    x = x + movex;
    y = y + movey;
    life--;
  }
  
  
}
