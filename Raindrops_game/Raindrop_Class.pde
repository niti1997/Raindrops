class Raindrop {
  PVector loc;
  PVector vel;
  PVector acc;
  int d=5;
  PImage RD;
  float wscale=.01;//scaling the width of the raindrops
  float hscale=.04;//scaling the height of the raindrops

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
  void score() {//keeps score of what is happpening with lives and losses//PUT THIS IN THE MAIN CODE
    fill(255);
    textSize(20);
    text("Missed", 400, 100);
    textSize(50);
    text(missedscore, 400, 50);
    if (loc.y>height) {//if raindrops go off the screen then missed score increases and raindrops go back up
      missedscore++;
      loc.y=0;
      loc.x=random(width);
      if ( missedscore % 20 == 0 && missedscore != 0) {//every 20 raindrops that you miss.......
        lives--;//you lose a life
        missedscore= 0;//missed score back to 0 and you get another chance upto 3 chances.
      }
    }

    if ( lives ==  0) {//if you lose all lives, raindrops stop falling and game is over. 
      loc.y=-height;
      vel.y=0;
      acc.y=0;

      fill(255);
      textAlign(CENTER);
      textSize(50); 
      text("Game Over", width/2+40, height/3);
    }



    textSize(20);
    text("Lives", 700, 100);
    textSize(50);

    text(lives, 700, 50);
  }
  void collect(Catcher c) {
    fill(255);
    textSize(50);
    text(score, 50, 50);
    if (dist(loc.x, loc.y, c.loc.x, c.loc.y) < c.d/2+d/2 ) {//if the dist between raindrop and the catcher is < catcher's radius and the raindrop's radius
      score++; //score increases
      if (score % 10 == 0) {
        lives++;
      }
      loc.y=0; //goes back to the top
      loc.x=random(width);//and falls from a random place between 0 and width
    }
  }
}

