
ArrayList list;
PImage bgimage;

void setup(){
  size(500,500);
  list = new ArrayList();
  bgimage = loadImage("tree.jpg");
}

void draw(){
  
  background(255);
  imageMode(CORNER);
  image( bgimage, 0, 0, width, height);
  for(int i = list.size(); i > 0; i--){
    Motion m = (Motion)list.get(i-1);
    if( m.isAlive() == false ){
      list.remove(i-1);
    }
  }
  
  for(int i = 0; i < list.size(); i++){
    Motion m = (Motion)list.get(i);
    m.draw();
  }
}

void mousePressed(){
}

void keyPressed(){
  
  if( key == '1' ){
    list.add( new Ball(mouseX, mouseY) );
  }else if( key == '2' ){
    list.add( new Rect(mouseX, mouseY) );
  }else if( key == '3' ){   
    list.add( new Circle(mouseX, mouseY) );
  }else if( key == '4' ){
    list.add( new Ornament(mouseX, mouseY) );
  }
  
}

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
  

  
}

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
class Motion
{
  int x, y;
  int life;
  int r;
  color c;

  void draw(){}
  void mousePressed(){}
  void keyPressed(){}

  boolean isAlive(){
    if( life > 0 ){
      return true;
    }else{
      return false;
    }
  }  

}

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


