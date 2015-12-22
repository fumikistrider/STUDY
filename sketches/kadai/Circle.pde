class Circle extends Motion{
  
  Circle(int _x, int _y){
    x = _x;
    y = _y;
    r = 0;
    life = 360;
    c = color( (int)random(0,255),
               (int)random(0,255),
               (int)random(0,255) );
  }
  
  void draw(){
    noFill();
    stroke(c);
    strokeWeight(3);
    arc(x, y, 80, 80, 0, radians(r));
    strokeWeight(1);
    r++;
    life--;
  }
    
}
