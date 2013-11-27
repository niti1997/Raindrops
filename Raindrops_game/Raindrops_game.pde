Raindrop[] drops = new Raindrop[50];
Catcher c;
void setup() {

  size(500, 500);

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }
c= new Catcher();
}


void draw() {

  background(0);
  for (int i = 0; i < drops.length; i++) {
    drops[i].display();
    drops[i].drop();
    drops[i].restart();
  }
  c.display();
  c.reset();
}
