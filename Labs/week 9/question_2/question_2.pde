int x = 0;
int speed = 1;
myCar c1 = new myCar(100,100,150,100, 120,10);
myCar c2 = new myCar(-600,100,150,100, 120,10);
void setup() {
  size(500,500);
  smooth();

}
void draw() {
   background(255);
   c1.display();
   c1.move();
    
   c2.display();
   c2.move();
}


    
class myCar {
float x;
float y;
float h;
float w;
float c;
float s;
  myCar(float tempx, float tempy , float temph, float tempw, float tempc, float temps) {
    x = tempx;
    y = tempy;
    h = temph;
    w = tempw;
    c = tempc;
    s = temps;
  }
  
  void display() {
    stroke(0);
    fill(c);
    rect(x,y,h,w);
      
  };

  void move() {
     x = x + speed; // Change the x location by speed
     
  }
 
}
    