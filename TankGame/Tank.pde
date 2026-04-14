class Tank{
  int x,y,w,h,speed,health;
  PImage t1;
  
  
  // Constructor
  Tank() {
    x = 100;
    y = 100;
    w = 100;
    h = 100;
    speed = 15;
    health = 100;
    t1 = loadImage("Tank.png");
  }
  
  void display() {
    imageMode(CENTER);
    image(t1,x,y);
  }
  
  void move() {
  //  if(y<0) {
   //   y = height;
   // }
   // if(y>height) {
   //   y = 0;
   // }
  //  if(x<0) {
   //   x = height;
  //  }
   // if(x>height) {
   //   x = 0;
   // }
    
    
    //if(key == RIGHT) {
    x = x + speed;
   // }
    //else if(key == LEFT) {
    //  x = x - speed;
   // }
   // else if(key == UP) {
    //  y = y + speed;
   // }
   // else if(key == LEFT) {
   //   y = y - speed;
  //  }
 }
}
