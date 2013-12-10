class Catcher {
  PVector loc;
  int d;
  color col;




  Catcher() {
    loc = new PVector(mouseX, height-d);
    d = 50;
    col=color(50, 0, 110);
  }

  void display() {
    fill(col);
    ellipse(loc.x, loc.y, d, d);
  }

  void reset() {
    loc.set(mouseX, height-d);
  }
}


