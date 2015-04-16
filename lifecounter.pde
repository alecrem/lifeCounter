int x, y, dragSize = 50, life1 = 20, life2 = 20;
int wi = 375, he = 667; 

void setup() {
  size(wi, he);
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
  rect(0, 0, wi/2, he);

  h = int(map(life2, 0, 20, 357, 150));
  if (life2 > 20) {
    h = 150;
  }
  if (life2 <= 0) {
    h = 357;
  }
  fill(h, 128, 200);
  rect(wi/2, 0, wi/2, he);

  textSize(64);
  fill(255);
  text("" + life1, 98-40, 298);
  text("" + life2, 298-50, 298);
  text("" + life1, 102-40, 298);
  text("" + life2, 302-50, 298);
  text("" + life1, 98-40, 302);
  text("" + life2, 298-50, 302);
  text("" + life1, 102-40, 302);
  text("" + life2, 302-50, 302);
  fill(0);
  text("" + life1, 100-40, 300);
  text("" + life2, 300-50, 300);
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
    if (x< wi/2) {
      life1--;
    } 
    else {
      life2--;
    }
  }
  if (y - mouseY > dragSize) {
    y = mouseY;
    //println("Dragged up by " + dragSize);
    if (x < wi/2) {
      life1++;
    } 
    else {
      life2++;
    }
  }
}

