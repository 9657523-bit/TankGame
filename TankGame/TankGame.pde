// Beau Burbank | Apr 14 2026 | TankGame
PImage bg;
Tank Lebron;

void setup() {
  size(500,500);
  bg = loadImage("TankBackground.png");
  Lebron = new Tank();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0,0);
  Lebron.display();
}

void keyPressed() {
   Lebron.move();
}  
