MoveClip mc;

void setup(){
  size(600,600);
  mc = new MoveClip(1,1);
}

void draw(){
  background(255);
  
  mc.draw();
}
