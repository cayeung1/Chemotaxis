colony = new chemotaxis[100];

void setup(){
  size(500, 500);
  frameRate(20);
  background(255);
  for(int i = 0; i < colony.length; i++){
    colony[i] = new chemotaxis();
  }
}

void draw(){
  for (int i = 0; i < colony.length; i++) {
    colony[i].show();
    colony[i].move();
  }
}
class chemotaxis {
  int myColor;
  int randomX;
  int randomY;
  int myX;
  int myY;
  int mySize;
  chemotaxis() {
    randomX = (int)(Math.random()*501);
    randomY = (int)(Math.random()*501);
    myX = 0;
    myY = 0;
    mySize = (int)(Math.random()*20+10);
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move() {
    myX = myX + (int)(Math.random()*20)-8;
    myY = myY + (int)(Math.random()*20)-8;
    if (mouseX > myX) {
      myX = myX + mySize/((int)(Math.random()*10)+6);
    }
    if (mouseX < myX) {
      myX = myX - mySize/((int)(Math.random()*10)+2);
    }
    if (mouseY > myY) {
      myY = myY + mySize/((int)(Math.random()*10)+6);
    }
    if (mouseY < myY) {
      myY = myY - mySize/((int)(Math.random()*10)+2);
    }
  }
  void show() {
    fill(myColor);
    noStroke();
    ellipse( randomX + myX, randomY + myY, 30, 30);
  }
}



void draw() {
  colony = new chemotaxis[10];
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new chemotaxis(0, i*50);
    colony[i].move();
    colony[i].show();

  }
}
