Catcher c;

int speed= 1000;//control the rate at which the raindrops fall down
int OldTime=0;//what it starts with
int index = 1;//controls the number of raindrops that fall    
Raindrop[] drops = new Raindrop[500];
int score, missedscore;
int lives = 3;//you have a total of 3 lives/chances
boolean run;
PImage bg;


void setup() {
  bg=loadImage("bg.jpg");
  size(bg.width, bg.height);
  c=new Catcher();
  for (int i = 0; i < drops.length; i++) {
    drops[i] = new Raindrop();
  }
  run=false;//before anything else, run is false that means game not running
}

void draw() {
  background(bg);
  if (run==false) { //at the start of the game, run=false so u have a start button
    //rect(50, 50, 100, 100); THIS RECTANGLE IS JUST FOR KNOWING THE DIMENSIONS FOR VOID MOUSEPRESSED, its like an invisible rect.
    fill(255);
    textSize(30);
    text("Start", 80, 100);
  }


  if (run==true) { //when run is true, the game is running 
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
    text("Catches", 50, 100);
  }
}

void mousePressed() {
  if (mouseX>50 && mouseX<150 && mouseY>50 && mouseY<150) { //if you click the start button...
    run=true;//run is true (so game runs)
  }
  if (mouseX>150 && mouseX<50 && mouseY>150 && mouseY<50) {//if you click anywhere else other than the start button
    run=false;//run is false (so only start screen there) and game won't run unless u click the start button
  }
}
void keyPressed() { //if you press r, the game stops running and missed score goes back to 0
  if (key == 'r') {
    run = false;
    missedscore = 0;
    lives= 3;
    score=0;
  }
}

