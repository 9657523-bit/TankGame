class Obstacle {
  int x, y, w, h, speed, health;
  PImage obstl1;

  // Constructor
  Obstacle(int x, int y) {
    this.x = x;
    this.y = y;
    w = 75;
    h = 75;
    speed = 5;
    health = 100;
    // t1W = loadImage("TankW.png");
  }

  void display() {
    rectMode(CENTER);
    fill(127);
    rect(x, y, w, h);
  }

  void move() {
        x = x + speed;
        if(x > width) {
          x = 0;
        }
  }
}
