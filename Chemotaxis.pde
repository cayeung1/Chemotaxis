chemotaxis [] colony =  new chemotaxis[100];
void setup() {
  size(500, 500);
  background(255);
  for (int i =0; i < colony.length; i++) {
    colony[i] = new chemotaxis();
  }
}
void draw() {
  background(255);
  for (int i = 0; i < colony.length; i++) {
    colony[i].move();
    colony[i].show();
  }
}

class chemotaxis {
  int myColor;
  int myX;
  int myY;
  int mySize;
  chemotaxis() {
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
    ellipse( myX, myY, mySize, mySize);
  }
}
