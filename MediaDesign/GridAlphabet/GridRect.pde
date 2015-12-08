class GridRect{
  
  int size = 120;
  color c = #000000;
  
  void create(int x, int y){

    int alpha = frameCount % 255; 
    
    fill(c,alpha);
    rect(size * x, size * y, size, size);    
    
  }
  
}

