class Raindrop {
  PVector loc;
  PVector vel;
  //PVector acc;

  Raindrop() {
    loc= new PVector(random(width), 0);
    vel= new PVector(0, random(2, 4));
    //acc= new PVector (0, .1);
  }

  void display() {
fill(0,150,200);
    ellipse(loc.x, loc.y,5,5);
  }
  void drop() {
    loc.add(vel);
    //vel.add(acc);
  }
  void reset() {
    if (loc.y>height) {
      loc.y=0;
      loc.x=random(width);
    }
  }
}

