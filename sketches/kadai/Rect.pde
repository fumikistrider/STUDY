class Rect extends Motion{
  
  Rect(int _x, int _y){
    x = _x;
    y = _y;
    r = 10;
    life = (int)random(100,300);
    c = color( (int)random(0,255),
               (int)random(0,255),
               (int)random(0,255) );
  }
  
  void draw(){
    noFill();
    stroke(c);
    rectMode(CENTER);
    rect(x,y,r,r);
    r++;
    life--;
  }
    
}

