import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class HelloSketch extends PApplet {

public void setup(){
  size(400,400);
  println("Hello,World");
}

public void draw(){
  textSize(30);
  text("Hello,World",100,100);
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "HelloSketch" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
