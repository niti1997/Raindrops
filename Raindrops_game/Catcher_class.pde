class Catcher {
  PVector loc;
  int d;
  color col;




  Catcher() {
    loc = new PVector(mouseX, height-d);//sets the location for the catcher
    d = 50;
    col=color(50, 0, 110);
  }

  void display() {//shows the Catcher
    fill(col);
    ellipse(loc.x, loc.y, d, d);
  }

  void reset() {
    loc.set(mouseX, height-d);//keeps on resetting it to mouse x and height-d to have the catcher constantly move 
  }
}


