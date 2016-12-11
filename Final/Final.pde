Enemy e1;
Ship s1;
int Enemies = 3;
Enemy[] drops = new Enemy[Enemies];

void setup() {
  size(480, 854);
  background(255);
  smooth();
  noStroke();
  noCursor();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Enemy();
    e1 = new Enemy();
  }
  s1 = new Ship();
}

void draw() {
  fill(255, 80);
  rect(0, 0, 480, 854);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
    drops[i].getr();
    drops[i].gett();
    if (mouseX+15 > drops[i].getr() && mouseX-15 < drops[i].getr()+50 && mouseY+15 > drops[i].gett() && mouseY-15 < drops[i].gett()+50) {
      stop();
    }
  }
  s1.draw();
}
