class Obstacle {
  int x, y, w, h, speed, health;
  PImage obstl1;

  // Constructor
  Obstacle(int x, int y) {
    this.x = x;
    this.y = y;
    w = 75;
    h = 75;
    speed = 2;
    health = 100;
    obstl1 = loadImage("Asteriod.png");
  }

  void display() {
    imageMode(CENTER);
    image(obstl1, x, y);
  }

  void move() {
    x = x + speed;
    if (x > width) {
      x = 0;
    }
  }
}
