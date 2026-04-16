class Tank {
  int x, y, w, h, speed, health;
  PImage t1W, t2A, t3S, t4D;
  char idir;

  // Constructor
  Tank() {
    x = 100;
    y = 100;
    w = 100;
    h = 100;
    speed = 15;
    health = 100;
    t1W = loadImage("TankW.png");
    t2A = loadImage("TankA.png");
    t3S = loadImage("TankS.png");
    t4D = loadImage("TankD.png");
    idir = 'w';
  }

  void display() {
    imageMode(CENTER);
    if (idir == 'w') {
      image(t1W, x, y);
    } else if (idir == 'a') {
      image(t2A, x, y);
    } else if (idir == 's') {
      image(t3S, x, y);
    } else if (idir == 'd') {
      image(t4D, x, y);
    }
  }

  void move(char dir) {
    if (dir == 'w') {
      idir = 'w';
      y = y - speed;
    } else if (dir == 's') {
      idir = 's';
      y = y + speed;
    } else if (dir == 'a') {
      idir = 'a';
      x = x - speed;
    } else if (dir == 'd') {
      idir = 'd';
      x = x + speed;
    }
  }
}
