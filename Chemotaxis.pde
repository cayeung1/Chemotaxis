int myX = 0;
int myY = 0;
class chemotaxis {
  int myColor;
 // int myX = 0;
  //int myY = 0;
  chemotaxis(int x, int y) {
  // myY = y;
  // myX = x;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }

  void move() {
    //x=x+(int)(Math.random()*6-1);
    //y=y+(int)(Math.random()*6-1);
    myX = myX+(int)(Math.random()*3-1);
    myY = myY+(int)(Math.random()*3-1);
  }
  void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, 30, 30);
  }
}

chemotaxis [] colony;


void setup() {
  size(500, 500);
  frameRate(20);
  background(255);

}

void draw() {
  colony = new chemotaxis[10];
  for (int i = 0; i < colony.length; i++) {
    colony[i] = new chemotaxis(0, i*50);
    colony[i].move();
    colony[i].show();

  }
}
