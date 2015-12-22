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

