
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
boolean run;
boolean gameover;

void setup() {
  size(500, 500);
  c=new Catcher();

  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }
  run=false;
  gameover=false;
}

void draw() {
  background(100, 200, 255);
  if (run==false) { 
    fill(255);
    rect(50, 50, 100, 100);
    fill(0);
    textSize(20);
    text("Start", 70, 70);
  }


  if (run==true) {
    for (int i = 0; i < index; i++) {
      drops[i].display();
      drops[i].drop();
      drops[i].collect(c);
    }
    c.display();
    c.reset();
    if (millis()-OldTime >= speed) {//if the num.of millis - 0 is >= the rate at which the drops fall 
      index++;//index increases, so more raindrops fall
      OldTime=millis();//resets it back so that one drop falls at a time ...otherwise they all fall together
    }
  }
  if (gameover==true) {
    fill(255);
    rect(300,300,100,100);
    fill(0);
    textSize(20);
    text("Stop",350,70);
    //ADD THAT IF CATCHERS DONT CATCH THEN GAME OVER
}
}

void mousePressed() {
  if (mouseX>50 && mouseX<150 && mouseY>50 && mouseY<150) {
    run=true;
  }
  if (mouseX>150 && mouseX<50 && mouseY>150 && mouseY<50) {
    run=false;
  }
  if (mouseX>300 && mouseX<400 && mouseY>300 && mouseY<400){
    run=true;
  }
  if (mouseX<300 && mouseX>400 && mouseY<300 && mouseY>400) {
    run=false;
  }
}

