
void setup() {
  size(500,300);
  background(255,255,255);
};

void draw() {
  fill(0,0,255);
  ellipse(50,50,100,100);
  
  fill(255,0,0);
  ellipse(450,50,100,100);
  
  fill(255,255,0);
  ellipse(50,250,100,100);
  
  fill(0,120,0);
  ellipse(450,250,100,100);
  
  rectMode(CENTER);
  fill(255,160,122);
  rect(250,150,300,150);
  
  fill(0,255,30);
  triangle(250, 76, 400, 225, 99, 225);
};