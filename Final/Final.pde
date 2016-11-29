Enemy r1;
Ship s1;
int Enemies = 10;
Enemy[] drops = new Enemy[Enemies];

void setup() {
  size(600, 600);
  background(255);
  smooth();
  noStroke();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Enemy();
    r1 = new Enemy();
  }
    s1 = new Ship();
}

void draw() {
  fill(255, 80);
  rect(0, 0, 600, 600);
  for (int i = 0; i < drops.length; i++) {
    drops[i].fall();
  }
  s1.draw();
  //if(r+50 < mouseX 
}