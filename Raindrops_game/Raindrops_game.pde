
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
int score,missedscore;
boolean run;
PImage bg;


void setup() {
   bg=loadImage("bg.jpg");

  size(bg.width, bg.height);
  c=new Catcher();

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }
  run=false;
  
}

void draw() {
  background(bg);
  if (run==false) { 
    fill(0);
    rect(50, 50, 100, 100);
    fill(255);
    textSize(20);
    text("Start",80, 100);
    
  }


  if (run==true) {
    for (int i = 0; i < index; i++) {
      drops[i].display();
      drops[i].drop();
      drops[i].collect(c);
      drops[i].restart();

  }
    c.display();
    c.reset();
    
    if (millis()-OldTime >= speed) {//if the num.of millis - 0 is >= the rate at which the drops fall 
      index++;//index increases, so more raindrops fall
      OldTime=millis();//resets it back so that one drop falls at a time ...otherwise they all fall together
    }
    fill(255);
    textSize(20);
    text("Catches",50,100);
    text("Losses",400,100);
  }
  
}

void mousePressed() {
  if (mouseX>50 && mouseX<150 && mouseY>50 && mouseY<150) {
    run=true;
  }
  if (mouseX>150 && mouseX<50 && mouseY>150 && mouseY<50) {
    run=false;
  }
 
  }


