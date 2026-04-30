class Obstacle {
  float x, y, w, h, speed, health;
  PImage obstl1;
  char idir;

  // Constructor
  Obstacle(float w, float h) {
    this.w = w;
    this.h = h;
   speed = 2;
   health = 100;
    if (int(random(4))==2) {
      idir = 'w';
      x = random(width);
      y = height + 100;
    } else if (int(random(3))==1) {
      idir = 'd';
      x = -100;
      y = random(height);
    } else if (int(random(2))==1) {
      idir = 'a';
      x = width + 100;
      y = random(height);
    } else {
      idir = 's';
      x = random(height);
      y = -100;

    }
      obstl1 = loadImage("Asteriod.png");
  }
  void display() {
    imageMode(CENTER);
    image(obstl1, x, y);
  }

  void move() {
    switch(idir) {
    case 'w':
      y = y - speed;
      break;
    case 'a':
      x = x - speed;
      break;
    case 's':
      y = y + speed;
      break;
    case 'd':
      y = y + speed;
      break;
    }
  }
  boolean reachedEdge() {
    return x >= width+150 || x <= -150 || y > height + 150 || y < -150;
  }
}
