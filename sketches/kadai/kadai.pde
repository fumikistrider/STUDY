class Ball{
  int x, y;
  int life;
  int r;
  color c;
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

ArrayList list;

void setup(){
  size(500,500);
  list = new ArrayList();
}

void draw(){
  background(255);
  for(int i = list.size(); i > 0; i--){
    Ball b = (Ball)list.get(i-1);
    if( b.isAlive() == false ){
      list.remove(i-1);
    }
  }

  for(int i = 0; i < list.size(); i++){
    Ball b = (Ball)list.get(i);
    b.draw();
  }
}

void mousePressed(){
  list.add( new Ball(mouseX, mouseY) );
}

