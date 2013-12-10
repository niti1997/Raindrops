class Raindrop {
  PVector loc;
  PVector vel;
  PVector acc;
  int d=5;

  Raindrop() {
    loc= new PVector(random(width), 0);
    vel= new PVector(0, random(2, 4));
    acc= new PVector (0, .001);
  }

  void display() {
    fill(0, 150, 200);
    ellipse(loc.x, loc.y, d, d);
  }
  void drop() {
    loc.add(vel);
    vel.add(acc);
  }
  void restart() {
    if (loc.y>height) {
      loc.y=0;
      loc.x=random(width);
    }
  }
  void collect(Catcher c) {
    text(score, 30, 30);
    if (dist(loc.x, loc.y, c.loc.x, c.loc.y) < c.d/2+d/2 ) {
      score++;
      loc.y=0;
      loc.x=random(width);
    }
  }
}

