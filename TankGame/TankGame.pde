// Beau Burbank | Apr 14 2026 | TankGame
PImage bg;
Tank Lebron;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();

void setup() {
  size(500, 500);
  bg = loadImage("TankBackground.png");
  Lebron = new Tank();
  obstacles.add(new Obstacle(250, 250));
  obstacles.add(new Obstacle(25, 400));
  obstacles.add(new Obstacle(375, 100));
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  Lebron.display();

  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle obs = obstacles.get(i);
    obs.display();
    obs.move();
  }
}

void keyPressed() {
  if (key == 'w') {
    Lebron.move('w');
  } else if (key == 's') {
    Lebron.move('s');
  } else if (key == 'a') {
    Lebron.move('a');
  } else if (key == 'd') {
    Lebron.move('d');
  }
}
