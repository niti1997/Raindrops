class Catcher {
  PVector loc;
  int d;
  color col;
  int score;




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
  
void score() {
  text(score, width/2, height/2);
  if (dist(loc.x, loc.y, c.loc.x, c.loc.y) < c.d/2+d/2 ) {
    score++;

   
  
//  void txt() {
//    String s = str(score);
//    text(s, width/2, height/2);
//  }
}
}
}

