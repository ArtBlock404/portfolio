class Button {
  // Member Variables
  int x, y, w, h, c, t, u, r;
  color c1, c2, c3, ct;
  String val;
  boolean over;
  // constructor
  Button(int x, int y, int w, int h, int c, int t, int u, int r, String val, color c3, color c1, color c2, color ct) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c1 = c1;
    this.c2 = c2;
    this.val = val;
    this.c3 = c3;
    this.c = c;
    this.ct = ct;
    this.t = t;
    this.u = u;
    this.r = r;
    over = false;
  }
  // Member Methods
  void display() {
    rectMode(CENTER);
    if (over == true) {
      fill(c2);
    } else {
      fill(c1);
    }
    stroke(c3);
    rect(x, y, w, h, c);
    fill(ct);
    textAlign(CENTER, CENTER);
    strokeWeight(3);
    textSize(t);
    if (r > 0) {
      pushMatrix();
      float angle2 = radians(r);
      if (r == 270) {
        translate(x-205, y+45);
      }
      rotate(angle2);
      text(val, x, y+u);
      popMatrix();
    } else {
      text(val, x, y+u);
    }
  }

  void hover(int tempX, int tempY) {
    if (x>tempX-w/2 && x<tempX+w/2 && y>tempY-h/2 && y<tempY+h/2) {
      over = true;
    } else {
      over = false;
    }
  }
}
