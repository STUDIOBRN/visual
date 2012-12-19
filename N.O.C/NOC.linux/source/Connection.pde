public class Node {
  // GLOBAL VARIABLES CLASS FROM TOXI LIBRARY
  Vec3D loc   = new Vec3D (0, 0, 0);
  Vec3D speed = new Vec3D (random(-1, 1), random(-1, 1), 0); 
  Vec3D grav  = new Vec3D (0, 0.01, 0);
  Vec3D acc   = new Vec3D (0, 0, 0);

  //CONSTRUCTOR
  Node(Vec3D _loc) {
    loc = _loc;
    }
  //FUNCTIONS
  void run() {
    display();
    move();
    bounce();
    gravity();
    lineBetween(lsz);
    florking(); //sürü fonksiyonu
  }
  void florking() {
    ayirma(sprt, rat1); // ayırlma 
    birlesme(0.001, coh); //birleşme // 
    gruplama(wlk, rat2); //gruplama
  }
  
  void gruplama(float magnitude, float _distance) {
    Vec3D idare = new Vec3D(); //steer 
    int count = 0;
    for (int i = 0; i < nodes; i++) {
      Node other = (Node) ballcollection.get(i);
      float distance = loc.distanceTo(other.loc);
      if (distance > 0 && distance < _distance ) {  
        idare.addSelf(other.speed);
        count++;
      }
    }
    if (count > 0) {
      idare.scaleSelf(1.0/count);
    } 
    idare.scaleSelf(magnitude); 
    acc.addSelf(idare);
  }
  
  void birlesme(float magnitude, float _distance) {
    Vec3D sum = new Vec3D();
    int count = 0;
    for (int i = 0; i < nodes; i++) {
      Node other = (Node) ballcollection.get(i);
      float distance = loc.distanceTo(other.loc);
      if (distance > 0 && distance < _distance ) {  
        sum.addSelf(other.loc);
        count++;
      }
    }
    if (count > 0) {
      sum.scaleSelf(1.0/count);
    }
    Vec3D idare = sum.sub(loc);
    idare.scaleSelf(magnitude);
    acc.addSelf(idare);
  }
  
  void ayirma (float magnitude, float _distance) {
    Vec3D idare = new Vec3D();
    int count = 0;
    for (int i = 0; i < nodes; i++) {
      Node other = (Node) ballcollection.get(i);
      float distance = loc.distanceTo(other.loc);
      if (distance > 0 && distance < _distance ) {
        Vec3D diff = loc.sub(other.loc);
        diff.normalizeTo(1.0/distance); // make smooth 
        idare.addSelf(diff);
        count++;
      }
    }
    if (count > 0) {
      idare.scaleSelf(1.0/count);
    }
    idare.scaleSelf(magnitude);
    acc.addSelf(idare);
  }  
  void lineBetween(float _linebetween) {
    for (int i = 0; i < nodes; i++) {
      Node other = (Node) ballcollection.get(i);
      float distance = loc.distanceTo(other.loc);
      if (distance > 0 && distance < _linebetween ) {
        //ses.trigger(); 
        strokeWeight(lwd);
        if ( autoCL != 0 ) {
          stroke(random(0, 255- lhue), lsat, lbrt, lalf);
        } 
        else {
          stroke(lhue, lsat, lbrt, lalf);
        }
        line (loc.x, loc.y, other.loc.x, other.loc.y);
      }
    }
  }
  
  void gravity () { // yerçekimi fonksiyonunun ismini değiştir yön fonksiyonu yap
    if (LEFT != 0) {
      speed.addSelf(-1, 0, 0);
    }else{
      speed.addSelf(0, 0, 0);
    } 
    if (RIGHT != 0) {
      speed.addSelf(+1, 0, 0);
    }else{
      speed.addSelf(0, 0, 0);
    }
    if (UP != 0) {
      speed.addSelf(0, -1, 0);
    }else{
      speed.addSelf(0, 0, 0);
    }
   if (UPRIGHT != 0) {
      speed.addSelf(1, 1, 0);
    }else{
      speed.addSelf(0, 0, 0);  
    }   
if (UPLEFT != 0) {
      speed.addSelf(-1, -1, 0);
    }else{
    speed.addSelf(0, 0, 0); 
    } 
    if (DOWN != 0) {
      speed.addSelf(0, 1, 0);
    }else{
      speed.addSelf(0, 0, 0);
    }
    if (DRIGHT != 0) {
      speed.addSelf(1, 1, 0);
    }else{
      speed.addSelf(0, 0, 0);
    }
    if (DLEFT != 0) {
      speed.addSelf(-1, 1, 0);
    }else{
      speed.addSelf(0, 0, 0);
    }   
 }
  
  void bounce() {
    if (loc.x > width ||  loc.x < 0 ) {
      speed.x = speed.x * -100;
    }
    if (loc.y > height || loc.y < 0) {
      speed.y = speed.y * -100;
    }
  }
  
  void move() {
    speed.addSelf(acc);
    speed.limit(spd);
    loc.addSelf(speed);
    acc.clear();
  }
  
  void display() {
    if ( autoCP != 1 ) {
      fill(random(0, 255- phue), psat, pbrt, palf);
    }else{
      fill(phue, psat, pbrt, palf);
    }
    stroke(phue, psat, pbrt, palf);
    ellipse(loc.x, loc.y, psz, psz);
  }
}

