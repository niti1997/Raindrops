class Raindrop {
  PVector loc;
  PVector vel;
  PVector acc;
  int d=5;
  PImage RD;
  float wscale=.025;
  float hscale=.04;
  Raindrop() {
    loc= new PVector(random(width), 0);
    vel= new PVector(0, random(2, 4));
    acc= new PVector (0, .001);
    RD= loadImage("rd.png");
  }

  void display() {//shows the drops


    image(RD, loc.x, loc.y, width*wscale, height*hscale);
  }
  void drop() {
    loc.add(vel);//velocity increases
    vel.add(acc);//acceleration
  }
  void restart() {//if the raindrop is >height it goes back to the top and falls again
    if (loc.y>height) {
      loc.y=0;
      loc.x=random(width);
    }
  }
  void collect(Catcher c) {
    textSize(50);
    text(score, 50, 50);
    if (dist(loc.x, loc.y, c.loc.x, c.loc.y) < c.d/2+d/2 ) {//if the dist between raindrop and the catcher is < catcher's radius and the raindrop's radius
      score++; //score increases
      loc.y=0; //goes back to the top
      loc.x=random(width);//and falls from a random place between 0 and width
    }
  }
}

