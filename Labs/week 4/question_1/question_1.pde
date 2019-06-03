void setup() {
  size(600,350);
};

void draw() {
  rectMode(CENTER);
  rect(300, 150, 200, 200);
};

void keyPressed() {
if (keyPressed) {
    if (key == 'y' || key == 'Y') {
      fill(255,255,0);
    }
    else if (key == 'b' || key == 'B') {
      fill(0,0,255);
    }
    else if (key == 'r' || key == 'R') {
      fill(255,0,0);
    }
    else if (key == 'g' || key == 'G') {
      fill(0,255,0);
    }
    else if (keyPressed) {
      fill(random(255),random(255),random(255));
    }
  } else {
    fill(255);
  }
};