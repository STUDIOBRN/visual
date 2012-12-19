// UI SET and LocationWindows 
void UI(){ 
 controlP5r = new ControlP5(this);
 controlP5g = new ControlP5(this);
 controlP5b = new ControlP5(this);
 controlP5t = new ControlP5(this);
 controlP5f = new ControlP5(this);
 controlP5j = new ControlP5(this);
 controlP5  = new ControlP5(this);
  
  //SET WINDOWS SIZE 
  ControlWindow wl = controlP5r.addControlWindow("win",  200, 155);
  ControlWindow wp = controlP5g.addControlWindow("win2", 200, 130);
  ControlWindow wb = controlP5b.addControlWindow("win3", 200, 100);
  ControlWindow wf = controlP5j.addControlWindow("win4", 200, 145);
  ControlWindow wg = controlP5t.addControlWindow("win5", 210, 135);
  ControlWindow wd = controlP5f.addControlWindow("win6", 210, 125);

  wl.setLocation(25, 85);  // SET LINE WINDOW LOCATION CONTROL WINDOW 
  wp.setLocation(25, 318);  // SET POINT WINDOW LOCATION CONTROL WINDOW
  wb.setLocation(25, 531);  // SET BACKGROUND WINDOW LOCATION CONTROL WINDOW
  wf.setLocation(1115, 86);  // SET FUNCTION LOCATION CONTROL WINDOW
  wg.setLocation(1115, 297);  // SET GENERAL LOCATION CONTROL WINDOW
  wd.setLocation(1115, 527);  // SET LOCATION CONTROL WINDOW  
 

 //Change color gui
 controlP5r.setColorForeground(#89B41C);
 controlP5g.setColorForeground(#FF3F0A);
 controlP5b.setColorForeground(#144156);
 controlP5t.setColorForeground(#FF0000);
 controlP5f.setColorForeground(#C62669);
 controlP5j.setColorForeground(#98edff);
  
 controlP5r.setColorActive(#769D0C);
 controlP5g.setColorActive(#FF890A);
 controlP5b.setColorActive(#327C8C);
 controlP5t.setColorActive(#FC2121);
 controlP5f.setColorActive(#E86EA1);
 controlP5j.setColorActive(#98edff);

 controlP5r.setColorBackground(#FFDB0A);
 controlP5g.setColorBackground(#FFDB0A);
 controlP5b.setColorBackground(#FFDB0A);
 controlP5t.setColorBackground(#FFDB0A);
 controlP5f.setColorBackground(#FFDB0A);
 //controlP5j.setColorBackgroung(#98edff);

 controlP5r.setColorLabel(#356B13);
 controlP5g.setColorLabel(#FF3F0A);
 controlP5b.setColorLabel(#327C8C);
 controlP5t.setColorLabel(#FC2121);
 controlP5f.setColorLabel(#E86EA1);
 controlP5j.setColorLabel(#98edff);
 
 ControlGroup wone = controlP5r.addGroup("LINE SETTINGS", 10, 20);
 wone.moveTo(wl); // MOVE TO CONTROL TO SECOND SCREEN
 controlP5r.begin(wl, 10, 30); // POSITION GROUP OF CONTROLS //lines color
 controlP5r.addSlider("lhue", 0, 255).linebreak();   // ADD SLIDER FOR RED VALUE
 controlP5r.addSlider("lsat", 0, 255).linebreak(); // ADD SLIDER FOR GREEN VALUE
 controlP5r.addSlider("lbrt", 0, 255).linebreak();  // ADD SLIDER FOR BLUE VALUE
 controlP5r.addSlider("lsz",  0, 300).linebreak(); // ADD SLIDER
 controlP5r.addSlider("lwd",  0,   5).linebreak(); // ADD SLIDER // ADD SLIDER FOR BLUE VALUE
 controlP5r.addSlider("lalf", 0, 255).linebreak(); 
 controlP5r.end();
 
 ControlGroup wtwo = controlP5g.addGroup("POINT SETTINGS", 10, 20);
 wtwo.moveTo(wp); // MOVE TO CONTROL TO SECOND SCREEN
 controlP5g.begin(wp, 10, 30); // POSITION GROUP OF CONTROLS //point color
 //points color
 controlP5g.addSlider("phue", 0, 255).linebreak();  // ADD SLIDER FOR BLUE VALUE
 controlP5g.addSlider("psat", 0, 255).linebreak();  // ADD SLIDER FOR BLUE VALUE
 controlP5g.addSlider("pbrt", 0, 255).linebreak();  // ADD SLIDER FOR BLUE VALUE
 controlP5g.addSlider("psz",  0,  75).linebreak(); // ADD SLIDER
 controlP5g.addSlider("palf", 0, 255).linebreak();  // ADD SLIDER FOR BLUE VALUE
 controlP5g.end();
 
 ControlGroup wthree = controlP5f.addGroup("BACKGROUND SETTINGS", 10, 10);
 wthree.moveTo(wb); // MOVE TO CONTROL TO SECOND SCREEN
 controlP5f.begin(wb, 10, 20); // POSITION GROUP OF CONTROLS //background color
 //controlP5b.addSlider("LR", -5, 5, 10, 330, 150, 15).linebreak(); // ADD SLIDER
 controlP5f.addSlider("backh", 0, 255).linebreak(); // ADD SLIDER
 controlP5f.addSlider("backs", 0, 255).linebreak(); // ADD SLIDER
 controlP5f.addSlider("backb", 0, 255).linebreak(); // ADD SLIDER
 controlP5f.addSlider("backa", 0, 255).linebreak(); // ADD SLIDER
 controlP5f.end();
  
 //function move
 ControlGroup wfour = controlP5b.addGroup("FUNTIONS", 10, 20);
 wfour.moveTo(wf); // MOVE TO CONTROL TO SECOND SCREEN
 controlP5b.begin(wf, 10, 30); // POSITION GROUP OF CONTROLS //lines color
 controlP5b.addSlider("sprt", 0,     50).linebreak(); // ADD SLIDER
 controlP5b.addSlider("rat1", -250, 250).linebreak(); // ADD SLIDER
 controlP5b.addSlider("rat2", -250, 250).linebreak(); // ADD SLIDER
 controlP5b.addSlider("wlk", 0,     0.5).linebreak(); // ADD SLIDER
 controlP5b.addSlider("coh", 50,   1000).linebreak(); // ADD SLIDER
 controlP5b.end();
 
 ControlGroup wfive = controlP5b.addGroup("GENERAL SETTINGS", 10, 20);
 wfive.moveTo(wg); // MOVE TO CONTROL TO SECOND SCREEN
 controlP5t.begin(wg, 10, 30); // POSITION GROUP OF CONTROLS // lines color & Toggles
 controlP5t.addSlider("frm"  , 2,  30).linebreak(); // ADD SLIDER
 controlP5t.addSlider("spd"  , 0,  50).linebreak(); // ADD SLIDER
 controlP5t.addSlider("nodes", 0, 1000).linebreak(); // ADD SLIDER
 
 controlP5t.addToggle("autoCP"); //  x, y , togglesizeX,toggleY 
 controlP5t.addToggle("autoCL"); // ADD NEW TOGGLE
 controlP5t.addToggle("close"); // ADD NEW TOGGLE
 controlP5t.addToggle("manuel"); // ADD NEW TOGGLE
 controlP5t.end();
  
  
 ControlGroup wsix = controlP5b.addGroup("ARROW BUTTONS", 10, 20);
 wsix.moveTo(wd); // MOVE TO CONTROL TO SECOND SCREEN
 controlP5.begin(wd, 10, 30); // POSITION GROUP OF CONTROLS // lines color & Toggles
 controlP5.addToggle("UP"); // ADD NEW TOGGLE
 controlP5.addToggle("LEFT"); //  x, y , togglesizeX,toggleY 
 controlP5.addToggle("UPLEFT"); // ADD NEW TOGGLE
 
 controlP5.addToggle("UP-RIGHT").linebreak(); // ADD NEW TOGGLE
 controlP5.addToggle("DOWN"); // ADD NEW TOGGLE
 controlP5.addToggle("RIGHT"); // ADD NEW TOGGLE
 controlP5.addToggle("DLEFT"); // ADD NEW TOGGLE
 controlP5.addToggle("DRIGHT"); // ADD NEW TOGGLE  
 controlP5.end();
}

// overrides the init() method so we can undecorate the
// main window first, then we have to call init() for the super class
// to init the sketch

