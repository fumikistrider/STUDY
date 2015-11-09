class GridRect{
  
  int size = 120;
  color c = #000000;
  
  void create(int x, int y){
    fill(c);
    rect(size * x, size * y, size, size);    
  }
  
}

