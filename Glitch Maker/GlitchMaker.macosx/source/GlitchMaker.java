import processing.core.*; 
import processing.data.*; 
import processing.opengl.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class GlitchMaker extends PApplet {

public void setup() {
  size (1220, 500);
  background(255);
}
public void draw() {
  yap();
  boz();
}
public void yap() {
  for (int i=0; i<PApplet.parseInt(random(5000)); i++) {
    int x = PApplet.parseInt(random(width));
    int y = PApplet.parseInt(random(height));
    set(x+PApplet.parseInt(random(PApplet.parseInt(random(-10, 10))))-PApplet.parseInt(random(10)), y+PApplet.parseInt(random(PApplet.parseInt(random(90))))+PApplet.parseInt(random(-1, 1)), 
    get(x, y, PApplet.parseInt(random(PApplet.parseInt(random(99)))), PApplet.parseInt(random(PApplet.parseInt(random(30))))));
  }
}
public void boz() {
  if (frameCount%(PApplet.parseInt(random(PApplet.parseInt(random(1200))))+1) == 0) {
    int yogunluk = PApplet.parseInt(noise(frameCount)*width);
    for (int i=0; i<width*random(50); i=i+PApplet.parseInt(random(yogunluk))) {
      stroke(random(255), random(255), random(200)+random(50));
      strokeWeight(random(150));
      noFill();
      rect(0, random(i), random(i), 0);
    }
  }
} 

  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--full-screen", "--bgcolor=#666666", "--stop-color=#cccccc", "GlitchMaker" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
