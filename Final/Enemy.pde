class Enemy{
  float r = random(0, 550);
  float t = -50;
  float speed = random(1, 10);

  void fall(){
    t = t + speed;
    fill(0);
    rect(r, t, 50, 50);

    if (t>height){
      r = random(0, 550);
      t = -50;
      speed = random(1, 10);
    }
  }
}