float x = 450;
float y = 450;

float speedx = random(10,10);
float speedy = random(10,10);

void setup() {
  background(250);
  size(500,500);
};

void draw() {
  background(250);
   ellipse(x,y,40,40);
   
   y = y+speedy;
   x = x+speedx;
   
  if (x>= 500||x<0) {
        fill(240);       
       speedx=speedx*-1; 
  }
  
  if (y>= 500||y<0) {      
    fill(255);
    speedy=speedy*-1; 
  }
 
};