
void setup() {
  size(480, 120);
};

void draw() {
  fill(255,255,255);
  arc(90, 60, 80, 80, QUARTER_PI, HALF_PI); 
  
  fill(255,0,0);
  arc(190, 60, 80, 80, 0, PI+HALF_PI);
  
  fill(255,255,0);
  arc(290, 60, 80, 80, PI, TWO_PI+QUARTER_PI);
  
   
  fill(255,0,255);
  arc(390, 60, 80, 80, QUARTER_PI, PI +HALF_PI); 
};