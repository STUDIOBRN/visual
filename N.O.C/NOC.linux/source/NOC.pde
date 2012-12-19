/* NODES OF CONNECTION 
 ABSTRACT DRAWING TOOL
 by Baran Gulesen
 http://barangulesen.com
 */
 
import toxi.geom.*; //TOXI 
import controlP5.*; //GUI 
//DECLARE
ControlP5 controlP5r; 
ControlP5 controlP5g;
ControlP5 controlP5b; 
ControlP5 controlP5t;
ControlP5 controlP5f; 
ControlP5 controlP5j;
ControlP5 controlP5;
Slider sliderNodes;
Slider sliderlsz;

//DECLARE ARRAY
ArrayList ballcollection;

//SOME HUGE VARIABLES :)
public float lhue = 0;
public float lsat = 0 ;
public float lbrt = 255;
public float lsz = 43;
public float lwd = 5;
public float lalf = 90 ;

public float phue = 0;
public float psat = 255;
public float pbrt = 255;
public float psz = 10.7;
public float palf = 200;

public float sprt = 45 ; 
public float rat1 = 13;
public float rat2 = -100 ;
public float wlk ; 
public float coh = 340 ;

public float backh = 255;
public float backs = 0; 
public float backb = 0; 
public float backa = 150;

public float frm = 30 ;
public float spd = 5.5 ;
public int nodes = 100; 

public int autoCP = 1 ;
public int autoCL = 0 ;
public int close = 0;
boolean overRightButton = false;

public int LEFT = 0;
public int RIGHT = 0;
public int UP = 0;
public int DOWN = 0;
public int UPRIGHT,UPLEFT,DRIGHT,DLEFT;

public float nodesold;
public float lszold;

public float acs ;
public float brn = 0.3 ; 

void setup () {  

//A4 kağıt boyutu için 2480 3508
  size(800, 600);  
  background(255);    
  smooth(); 
  colorMode(HSB);
  UI(); // User Interface
 // locationWindow(); 
  //SAVE CPU 
  sliderNodes = (Slider)controlP5t.controller("nodes"); 
  sliderlsz = (Slider)controlP5r.controller("lsz"); 
  nodesold = nodes;
  lszold = lsz;

  //INITIALIZE  
  ballcollection = new ArrayList (); //Aray initialize
  for ( int i = 0 ; i < 1100000; i++) { // LOOP FUNCTION
    Vec3D origin = new Vec3D(random (0, width), random (height), 0);  
    Node myball = new Node(origin);
    ballcollection.add(myball);
  } 
}

void draw () {   
  fill(backh, backs, backb, backa);
  rect(0, 0, width, height); 

  for ( int i = 0 ; i < nodes; i++) {
    Node kutleler  = (Node) ballcollection.get(i);
    kutleler.run();
  }
  if (close != 0) {
    background(0);
  }
  frameRate(frm);
  
  
  if(keyPressed == true){
   saveFrame("noc-####.tif"); 
  }
//a has changed so subtract from blsz what we added to nodes so that nodes + lsz is constant
//if(nodes != nodesold){ 
//   lsz = int(lsz - (nodes - nodesold)); 
//}else{ 
// // lsz= lsz;
// if(lsz != lszold){ 
//   nodes = int(nodes - (lsz - lszold)); 
//  }
//}
   //update slide position
   sliderNodes.setValue(nodes);
   sliderlsz.setValue(lsz);
   
   nodesold = nodes;
   lszold = lsz;
   
   
   //println(mouseX);
}



//void mousePressed() {
//  if (M) {
//    link("http://barangulesen.com/p2/manuel.html", "_new");
//  }
//}



//remove the window frame
//public void init() {
//frame.removeNotify();
//frame.setUndecorated(true);
//frame.addNotify();
// super.init();
//}
