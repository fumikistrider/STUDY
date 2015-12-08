class MoveClip
{
  int gridX;
  int gridY;
  int sizeX;
  int sizeY;
  
  int targetGridX;
  int targetGridY;
  
  int moveX;
  int moveY;
  
  color c = #000000;
  
  MoveClip(int gx, int gy){
    gridX = gx;
    gridY = gy;
    sizeX = width / 5;
    sizeY = height / 5;
  }
  
  void draw(){    
    fill(c);
    rect( sizeX * gridX, sizeY * gridY, sizeX, sizeY);
  }
  
  
  
}
