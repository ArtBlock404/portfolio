// Jonah White | 9/25/25 | Calculator
Button[] buttons = new Button[19];
Button[] numButtons = new Button[10];
float l, r, res;
String dVal;
char op;
boolean left;
void setup() {
  size(463, 662);
  l = 0.0;
  r = 0.0;
  res = 0.0;
  dVal = "0.0";
  op = ' ';
  left = true;
  buttons[0] = new Button(40, 200, 60, 100, 10, 30, 0, 270, "CLEAR", #1A5A3B, #47B47D, #158E50, #1A5A3B);
  buttons[1] = new Button(230, 190, 80, 80, 300, 50, -5, 0, "A", #B23434, #E51919, #BC0000, #761C1C);
  buttons[2] = new Button(150, 270, 80, 80, 300, 50, -5, 0, "B", #B23434, #E51919, #BC0000, #761C1C);
  buttons[3] = new Button(380, 150, 60, 40, 10, 58, 0, 0, ".^.", 300, #47B47D, #158E50, #1A5A3B);
  buttons[4] = new Button(380, 250, 60, 40, 10, 48, -10, 0, "v", 300, #47B47D, #158E50, #1A5A3B);
  buttons[5] = new Button(330, 200, 40, 60, 10, 50, -8, 0, "<", 300, #47B47D, #158E50, #1A5A3B);
  buttons[6] = new Button(430, 200, 40, 60, 10, 50, -8, 0, ">", 300, #47B47D, #158E50, #1A5A3B);
  buttons[7] = new Button(380, 200, 60, 60, 10, 40, -8, 0, "OK", 300, #47B47D, #158E50, #1A5A3B);
  buttons[8] = new Button(290, 450, 80, 80, 10, 120, -22, 0, "-", 300, #47B47D, #158E50, #1A5A3B);
  buttons[9] = new Button(210, 370, 80, 80, 10, 90, -14, 0, "+", 300, #47B47D, #158E50, #1A5A3B);
  buttons[10] = new Button(370, 370, 80, 80, 10, 120, 9, 0, "*", 300, #47B47D, #158E50, #1A5A3B);
  buttons[11] = new Button(290, 290, 80, 80, 10, 90, -14, 0, "÷", 300, #47B47D, #158E50, #1A5A3B);
  buttons[12] = new Button(290, 370, 80, 80, 10, 90, -14, 0, "=", 300, #47B47D, #158E50, #1A5A3B);
  buttons[13] = new Button(290, 540, 60, 60, 5, 60, -14, 0, "±", #1A5A3B, #47B47D, #158E50, #1A5A3B);
  buttons[14] = new Button(370, 540, 60, 60, 5, 60, -8, 0, "√", #1A5A3B, #47B47D, #158E50, #1A5A3B);
  buttons[15] = new Button(370, 615, 60, 60, 5, 60, -14, 0, "^", #1A5A3B, #47B47D, #158E50, #1A5A3B);
  buttons[16] = new Button(290, 615, 60, 60, 5, 60, -10, 0, "%", #1A5A3B, #47B47D, #158E50, #1A5A3B);
  buttons[17] = new Button(40, 370, 60, 60, 5, 60, -10, 0, ".", #1A5A3B, #47B47D, #158E50, #1A5A3B);
  buttons[18] = new Button(40, 300, 60, 60, 10, 60, -15, 0, "_", #1A5A3B, #47B47D, #158E50, #1A5A3B);

  numButtons[0] = new Button(120, 370, 60, 60, 300, 50, -8, 0, "0", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[1] = new Button(40, 610, 60, 60, 300, 50, -8, 0, "1", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[2] = new Button(120, 610, 60, 60, 300, 50, -8, 0, "2", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[3] = new Button(200, 610, 60, 60, 300, 50, -8, 0, "3", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[4] = new Button(40, 530, 60, 60, 300, 50, -8, 0, "4", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[5] = new Button(120, 530, 60, 60, 300, 50, -8, 0, "5", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[6] = new Button(200, 530, 60, 60, 300, 50, -8, 0, "6", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[7] = new Button(40, 450, 60, 60, 300, 50, -8, 0, "7", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[8] = new Button(120, 450, 60, 60, 300, 50, -8, 0, "8", #B23434, #E51919, #BC0000, #761C1C);
  numButtons[9] = new Button(200, 450, 60, 60, 300, 50, -8, 0, "9", #B23434, #E51919, #BC0000, #761C1C);
}

void draw() {
  background(#4F5893);

  fill(0);
  rect(463, 662, 90, 1500);
  rect(463, 200, 120, 520);

  stroke(#40466A);
  strokeWeight(11);
  line(0, 2, 400, 2);
  line(400, 2, 400, 120);
  line(400, 120, 420, 120);
  line(420, 120, 420, 160);
  line(420, 160, 460, 160);
  line(460, 160, 460, 240);
  line(460, 240, 420, 240);
  line(420, 240, 420, 280);
  line(420, 240, 420, 280);
  line(420, 280, 400, 280);
  line(400, 280, 400, 320);
  line(400, 320, 420, 320);
  line(420, 320, 420, 420);
  line(420, 420, 400, 420);
  line(400, 420, 400, 460);
  line(400, 460, 420, 460);
  line(420, 460, 420, 660);
  line(420, 660, 0, 660);
  line(0, 660, 0, 0);
  stroke(300);

  fill(#1A5A3B);
  rect(380, 200, 80, 160, 20);
  rect(380, 200, 160, 80, 20);
  rect(40, 200, 60, 100, 10);
  rect(290, 370, 100, 260, 20);
  rect(290, 370, 260, 100, 20);

  fill(#47B47D);
  rect(380, 200, 60, 140, 10);
  rect(380, 200, 140, 60, 10);
  rect(290, 370, 80, 240, 10);
  rect(290, 370, 240, 80, 10);

  for (int i = 0; i<buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }

  for (int i = 0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }


  updateDisplay();
}
void mousePressed() {
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over && buttons[i].val.equals("+")) {
      dVal = "0.0";
      left = false;
      op = '+';
    }
    if (buttons[i].over && buttons[i].val.equals("-")) {
      dVal = "0.0";
      left = false;
      op = '-';
    } else if (buttons[i].over && buttons[i].val.equals("*")) {
      dVal = "0.0";
      left = false;
      op = '*';
    } else if (buttons[i].over && buttons[i].val.equals("÷")) {
      dVal = "0.0";
      left = false;
      op = '÷';
    } else if (buttons[i].over && buttons[i].val.equals("=")) {
      preformCalculation();
    } else if (buttons[i].over && buttons[i].val.equals("±")) {
      if (left) {
        l = l * -1;
        dVal = str(l);
      } else {
        r = r* -1;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals("^")) {
      dVal = "0.0";
      left = false;
      op = 'P';
    } else if (buttons[i].over && buttons[i].val.equals("√")) {
      op = '√';
    } else if (buttons[i].over && buttons[i].val.equals("%")) {
      if (left) {
        l = l*0.01;
        dVal = str(l);
      } else {
        r = r*0.01;
        dVal = str(r);
      }
    } else if (buttons[i].over && buttons[i].val.equals(".")) {
      if (dVal.contains(".") == false) {
        dVal += ".";
      }
    } else if (buttons[i].over && buttons[i].val.equals("_")) {
      if (left) {
        dVal = dVal.substring(0, dVal.length() -1);
        l = float(dVal);
      } else {
         dVal = dVal.substring(0, dVal.length() -1);
        r = float(dVal);
      }
    }
  }

  for (int i = 0; i<numButtons.length; i++) {
    if (dVal.length()<16) {
      if (numButtons[i].over && left == true) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          l = float(dVal);
        } else {
          dVal += numButtons[i].val;
          l = float(dVal);
        }
      } else if (numButtons[i].over && left == false) {
        if (dVal.equals("0.0")) {
          dVal = numButtons[i].val;
          r = float(dVal);
        } else {
          dVal += numButtons[i].val;
          r = float(dVal);
        }
      }
    }
  }
  for (int i = 0; i<buttons.length; i++) {
    if (buttons[i].over == true) {
      if (buttons[i] == buttons[0]) {
        dVal = "0.0";
        left = true;
        l = 0.0;
        r = 0.0;
      }
    }

    println("l:" + l);
    println("r:" + r);
    println("res:" + res);
    println("left:" + left);
    println("op:" + op);
  }
}
void updateDisplay() {
  rectMode(CENTER);
  stroke(0);
  fill(10);
  rect(200, 70, 360, 100, 20);
  fill(250);
  textSize(45);
  textAlign(RIGHT);
  text(dVal, width-85, 85);
}


void preformCalculation() {
  if (op == '+') {
    res = l + r;
  } else if (op == '-') {
    res = l - r;
  } else if (op == '*') {
    res = l * r;
  } else if (op == '÷') {
    res = l / r;
  } else if (op == 'P') {
    res = pow(l, r);
  } else if (op == '√') {
    res = sqrt(l);
  }

  dVal = str(res);
  l = res;
  left = true;
}
