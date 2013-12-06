
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
color  col;
int speed= 1000;
int OldTime=0;
int index = 1;   
Raindrop[] drops = new Raindrop[500];

void setup() {
  size(500, 500);
  c=new Catcher();

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }

}

void draw() {
  background(100, 200, 255);
  if (millis()-OldTime >= speed) {
    index++;
    OldTime=millis();
  }
  for (int i = 0; i < index; i++) {
    drops[i].display();
    drops[i].drop();
    drops[i].collect(c);
    
   
  
}
c.display();
c.reset();
}
