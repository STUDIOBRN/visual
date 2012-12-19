import controlP5.*; //GUI 


//DECLARE
ControlP5 controlP5; 

int elements = 2;
float genalfa = 187;
float h = 192;
float s = 158 ;
float b = 255 ;

float ALFAB ;
float MALFA = 34 ;

float MH = 255 ;
float MS = 255 ;
float MB = 15;

float phase = 17; 
float LINES = 0.25;

float COLORMASS = 255 ;
float COLORLINE = 255 ;

float amp2 = 2;
float amp = 100; 

float turn = 1.0;
float FILLON, TUS2, SAVE, _SIZE;

void setup() {
  size(800, 600); 
  smooth();
  colorMode(HSB);

  //INITIALIZE GUI
  controlP5 = new ControlP5(this);

  // Add a new controller window.
  ControlWindow cw = controlP5.addControlWindow("win", 250, 400);
  cw.setLocation(30, 165);  // SET LOCATION CONTROL WINDOW

  // Create a new group of controllers for background color and 
  // move them into the control window.


  ControlGroup cg = controlP5.addGroup("TUVAL", 10, 20);
  cg.moveTo(cw); // MOVE TO CONTROL TO SECOND SCREEN
  controlP5.begin(cg, 0, 10); // POSITION GROUP OF CONTROLS
  controlP5.addSlider("elements", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE
  controlP5.addSlider("genalfa", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE

  controlP5.addSlider("h", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE
  controlP5.addSlider("s", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE
  controlP5.addSlider("b", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE

  controlP5.addSlider("ALFAB", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE

  controlP5.addSlider("MALFA", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE


  controlP5.addSlider("MH", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE
  controlP5.addSlider("MS", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE
  controlP5.addSlider("MB", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE



  controlP5.addSlider("phase", 0, 255).linebreak(); // ADD SLIDER FOR GREEN VALUE
  controlP5.addSlider("LINES", 0, 10).linebreak(); // ADD SLIDER FOR GREEN VALUE
  controlP5.addSlider("COLORMASS", 0, 255).linebreak(); // ADD SLIDER FOR GREEN VALUE
  controlP5.addSlider("COLORLINE", 0, 255).linebreak(); // ADD SLIDER FOR GREEN VALUE
  controlP5.addSlider("amp", 0, 555).linebreak();  // ADD SLIDER FOR BLUE VALUE
  controlP5.addToggle("turn"); // ADD NEW TOGGLE
  controlP5.addToggle("FILLON"); // ADD NEW TOGGLE
  controlP5.addToggle("SAVE"); // ADD NEW TOGGLE
  controlP5.end();
}

void draw() {
  fill(0, genalfa);
  noStroke();
  rect(0, 0, width, height);



  turn = turn + 10  ;
  if (turn > 1005000) {
    turn=0;
    h = random(255);
  }
  
  phase = phase + .01;
  amp2 = amp2 + 0.1; 
  float spacing = TWO_PI/elements;
  translate(width*0.5, height*0.5);
  //rotate(-HALF_PI);
  for (int i = 0; i < elements;i++) {
    stroke(COLORLINE);
    strokeWeight(LINES);
    fill(h, s, b ,ALFAB );
    if (FILLON != 0) {
      noFill();
      ;
    }
    for (int j = 0; j < amp ;j++) {
      rotate(PI/turn);
      bezier(sin(spacing*i+sin(360))*(sin(360)), 
      sin(spacing*i)*(cos(spacing*i)*(amp*j)), 
      sin(spacing*i+sin(360))*(sin(360)),
      cos(spacing*(i))*(sin(spacing*(i)*phase)*(amp*1)),
      (sin(spacing*i)*(amp*1.5)), cos(spacing*(i))*(sin(spacing*(i)*phase)*(amp*1)),
      (sin(sin(amp)*i)*(amp*1.5)),
      (sin(30*i)*(amp*1.5))
        );
    }
  }
  

  if (SAVE != 0) {
    saveFrame("my_art#####.tif");
  }

}

