class GridCircle{
  
  int size = 120;
  color c = #000000;
  
  void create(int x, int y){
    fill(c);
    ellipseMode(CORNER);
    ellipse(x * size, y * size , size, size);
  }
  
}

