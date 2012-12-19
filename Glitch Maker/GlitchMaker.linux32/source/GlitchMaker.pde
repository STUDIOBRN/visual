void setup() {
  size (1220, 500);
  background(255);
}
void draw() {
  yap();
  boz();
}
void yap() {
  for (int i=0; i<int(random(5000)); i++) {
    int x = int(random(width));
    int y = int(random(height));
    set(x+int(random(int(random(-10, 10))))-int(random(10)), y+int(random(int(random(90))))+int(random(-1, 1)), 
    get(x, y, int(random(int(random(99)))), int(random(int(random(30))))));
  }
}
void boz() {
  if (frameCount%(int(random(int(random(1200))))+1) == 0) {
    int yogunluk = int(noise(frameCount)*width);
    for (int i=0; i<width*random(50); i=i+int(random(yogunluk))) {
      stroke(random(255), random(255), random(200)+random(50));
      strokeWeight(random(150));
      noFill();
      rect(0, random(i), random(i), 0);
    }
  }
} 

