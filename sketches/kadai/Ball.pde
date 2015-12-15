class Ball extends Motion{
  
  Ball(int _x, int _y){
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
    ellipse(x,y,r,r);
    r++;
    life--;
  }
  
  boolean isAlive(){
    if( life > 0 ){
      return true;
    }else{
      return false;
    }
  }
  
}

