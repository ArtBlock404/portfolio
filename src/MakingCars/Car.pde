class Car {
  // Member Variables aka data
  color c;
  float x;
  float y;
  float speed;
  boolean r;
  //Constructor
  Car() {
    c = color(random(0, 255), random(0, 255), random(0, 255));
    x = random(width);
    y = random(height);
    speed = random(1, 5);
    int rand = int(random(0, 2));
    if (rand == 0) {
      r = true;
    } else {
      r = false;
    }
  }
  //Member Methods
  void display() {
    if (r == true) {
      fill(100, 100, 0, 100);
      triangle(x+10, y, x+30, y+10, x+30, y-10);
      fill(0);
      rect(x-10, y, 6, 20);
      rect(x+10, y, 6, 20);
      fill(c);
      rectMode(CENTER);
      rect(x, y, 35, 15, 3);
      fill(100, 150, 200, 255);
      rect(x+8, y, 9, 15);
      fill(0);
      rect(x-15, y, 3, 15);
     
    } else {
      fill(100, 100, 0, 100);
      triangle(x-10, y, x-30, y+10, x-30, y-10);
      fill(0);
      rect(x-10, y, 6, 20);
      rect(x+10, y, 6, 20);
      fill(c);
      rectMode(CENTER);
      rect(x, y, 35, 15, 3);
      fill(100, 150, 200, 255);
      rect(x-8, y, 9, 15);
      fill(0);
      rect(x+15, y, 3, 15);
      
    }
  }
  void move() {
    if (r == true) {
      x = x + speed;
      if (x>width) {
        x = 0;
      }
    } else {
      x = x - speed;
      if (x<0) {
        x = width;
      }
    }
  }
}
