// Beau Burbank | Apr 14 2026 | TankGame
PImage bg;
Tank lebron;
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();
ArrayList<PowerUp> powerups = new ArrayList<PowerUp>();
int score;
Timer obsTimer, puTimer;


void setup() {
  size(500, 500);
  bg = loadImage("TankBackground.png");
  lebron = new Tank();
  //obstacles.add(new Obstacle(250, 250));
  // obstacles.add(new Obstacle(25, 400));
  // obstacles.add(new Obstacle(375, 100));
  score = 0;
  obsTimer = new Timer(1000);
  obsTimer.start();
  puTimer = new Timer(5000);
  puTimer.start();
}

void draw() {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  lebron.display();

  if (obsTimer.isFinished()) {
    obstacles.add(new Obstacle(-100, int(random(height))));
    obsTimer.start();
  }

  if (puTimer.isFinished()) {
    powerups.add(new PowerUp(int(random(width)),-100));
    puTimer.start();
  }

  //Display and Remove power UPs
  for (int i = 0; i < powerups.size(); i++) {
    PowerUp pu = powerups.get(i);
    pu.display();
    pu.move();
    //if (pu.reachedEdge()) {
    //  powerups.remove(pu);
    //}
    //if (pu.intersect(lebron)) {
    //  if (pu.type == 'h') {
    //    lebron.health = lebron.health + 20;
    //    powerups.remove(pu);
    //  } else if (pu.type == 'a') {
    //    lebron.laserCount = lebron.laserCount + 100;
    //    powerups.remove(pu);
    //  }else if (pu.type == 't') {
    //    lebron.turretCount = lebron.turretCount + 1;
    //    powerups.remove(pu);
    //  }
    //}
  }

  //displaying obstalces
  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle obs = obstacles.get(i);
    obs.display();
    obs.move();
    if (obs.reachedEdge()) {
      obstacles.remove(i);
    }
  }
  //displaying projectiles
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.display();
    p.move();
    if (p.reachedEdge()) {
      projectiles.remove(i);
    }
    lebron.display();
    scorePanel();
  }
}
void scorePanel() {
  fill(127, 127);
  rectMode(CENTER);
  rect(width/2, 30, width, 60);
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("Score:" + score, width/2, 50);
  text("Health:" + lebron.health, width/2-150, 50);
  text("Ammo:" + lebron.laserCount, width/2+150, 50);
}

void keyPressed() {
  if (key == 'w') {
    lebron.move('w');
  } else if (key == 's') {
    lebron.move('s');
  } else if (key == 'a') {
    lebron.move('a');
  } else if (key == 'd') {
    lebron.move('d');
  }
}

void mousePressed() {
  if (lebron.turretCount == 1) {
    projectiles.add(new Projectile(lebron.x, lebron.y));
  } else if (lebron.turretCount==2) {
    projectiles.add(new Projectile(lebron.x, lebron.y));
    projectiles.add(new Projectile(lebron.x, lebron.y));
  }
  projectiles.add(new Projectile(lebron.x, lebron.y));
}
