
//OLD CODE WHEN ALL THE RAINDROPS CAME IN TOGETHER

/*
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
 drops[i].collect(c); 
 }
 c.display();
 c.reset();
 
 }
 */



//NEW CODE WITH TIMER AND SCOREAND RAINDROPS COMING IN ONE AFTER ANOTHER
Catcher c;

int speed= 1000;//control the rate at which the raindrops fall down
int OldTime=0;//what it starts with
int index = 1;//controls the number of raindrops that fall    
Raindrop[] drops = new Raindrop[500];
int score;

void setup() {
  size(500, 500);
  c=new Catcher();

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }
}

void draw() {
  
 
  background(100, 200, 255);
  if (millis()-OldTime >= speed) {//if the num.of millis - 0 is >= the rate at which the drops fall 

    index++;//index increases, so more raindrops fall
    OldTime=millis(); //resets it back so that one drop falls at a time ...otherwise they all fall together
  }
  for (int i = 0; i < index; i++) { 
    drops[i].display();
    drops[i].drop();
    drops[i].collect(c);
  }
  c.display();
  c.reset();

  
}

