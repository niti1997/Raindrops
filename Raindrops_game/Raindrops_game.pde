Raindrop[] drops = new Raindrop[200];

void setup() {

  size(500, 500);

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }
}

void draw() {

  background(0);
  for (int i = 0; i < drops.length; i++) {
    drops[i].display();
    drops[i].drop();
    drops[i].reset();
  }
}
