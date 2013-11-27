class Catcher {
  PVector loc;
  int d;

  Catcher() {
    loc = new PVector(mouseX, height-d);
    d = 50;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }

  void reset() {
    loc.set(mouseX, height-d);
  }
}
