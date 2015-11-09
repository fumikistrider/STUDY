
GridRect gr;

GridCirlce gc;

void setup(){
 
  size(600,600);

  gr = new GridRect();
  gc = new GridCircle();

  noStroke();
  background(255);

}

void draw(){

  gr.create(0,0);
  gr.create(4,0);
  gr.create(0,4);
  gc.c = #ff0000;
  gc.create(4,4);

}

