int x, y, dragSize = 50, life1 = 20, life2 = 20;

void setup() {
  size(480, 640);
}

void draw() {
  background(#ffffff);
  colorMode(HSB);
  noStroke();
  int h;
  h = int(map(life1, 0, 20, 357, 150));
  if (life1 > 20) {
    h = 150;
  }
  if (life1 <= 0) {
    h = 357;
  }
  fill(h, 128, 200);
  rect(0, 0, 240, 640);

  h = int(map(life2, 0, 20, 357, 150));
  if (life2 > 20) {
    h = 150;
  }
  if (life2 <= 0) {
    h = 357;
  }
  fill(h, 128, 200);
  rect(240, 0, 240, 640);

  textSize(64);
  fill(255);
  text("" + life1, 98, 298);
  text("" + life2, 298, 298);
  text("" + life1, 102, 298);
  text("" + life2, 302, 298);
  text("" + life1, 98, 302);
  text("" + life2, 298, 302);
  text("" + life1, 102, 302);
  text("" + life2, 302, 302);
  fill(0);
  text("" + life1, 100, 300);
  text("" + life2, 300, 300);
}

void mousePressed() {
  x = mouseX;  
  y = mouseY;
  //println("Mouse pressed on (" + x + "," + y + ")");
}

void mouseReleased() {
  //println("Mouse released on (" + mouseX + "," + mouseY + ")\n");
}

void mouseDragged() {
  if (mouseY - y > dragSize) {
    y = mouseY;
    //println("Dragged down by " + dragSize);
    if (x<240) {
      life1--;
    } 
    else {
      life2--;
    }
  }
  if (y - mouseY > dragSize) {
    y = mouseY;
    //println("Dragged up by " + dragSize);
    if (x<240) {
      life1++;
    } 
    else {
      life2++;
    }
  }
}

