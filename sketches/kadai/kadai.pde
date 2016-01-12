
ArrayList list;
//PImage bgimage;

void setup(){
  size(500,500);
  list = new ArrayList();
  //bgimage = loadImage("tree.jpg");
}

void draw(){
  
  background(255);
  imageMode(CORNER);
  //image( bgimage, 0, 0, width, height);
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
  int randomkey = (int)random(1,5);

  if( randomkey == 1 ){
    list.add( new Ball(mouseX, mouseY) );
  }else if( randomkey == 2 ){
    list.add( new Rect(mouseX, mouseY) );
  }else if( randomkey == 3 ){   
    list.add( new Circle(mouseX, mouseY) );
  }else if( randomkey == 4 ){
    list.add( new Ornament(mouseX, mouseY) );
  }
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

