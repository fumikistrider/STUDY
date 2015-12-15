
ArrayList list;

void setup(){
  size(500,500);
  list = new ArrayList();
}

void draw(){
  
  background(255);
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
  list.add( new Ball(mouseX, mouseY) );
}

void keyPressed(){
  list.add( new Rect(mouseX, mouseY) );
}


