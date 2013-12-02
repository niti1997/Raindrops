int CurrentTime= 0;
int OldTime= 0;
color c;
void setup() {
  size(500, 500);
  textSize(50);
  textAlign(CENTER);
  
}
void draw() {
  background(c);
//  if (frameCount%200 == 0) {
//    c= color(random(255), random(200), random(150));
//  }  
//    text(frameCount, width/2, height/2);
//  
CurrentTime=millis();
if (CurrentTime-OldTime >= 2000) {
  c=color(0,0,random(255));
  OldTime=CurrentTime;
}
text(millis(),width/2,height/2);
}


