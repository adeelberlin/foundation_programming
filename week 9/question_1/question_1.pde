int x = 0;
int speed = 1;
Ball b1 = new Ball(100,100,32,32);
void setup() {
  size(200,200);
  smooth();
}
void draw() {
   background(255);
    b1.moveHorizontal();
    b1.display();

}


    
class Ball {
float x;
float y;
float h;
float w;
  Ball(float tempx, float tempy , float temph, float tempw) {
    x = tempx;
    y = tempy;
    h = temph;
    w = tempw;
  }
  
  void display() {
    stroke(0);
    fill(175);
    ellipse(x,y,h,w);
      
  };
  
  void moveVertical() {
       y = y + speed; // Change the x location by speed
  
     if ((y > height) || (y < 0)) {// If we have reached an edge, reverse speed
     speed = speed * - 1;
    }
  
  }
  
  void moveHorizontal() {
     x = x + speed; // Change the x location by speed
  
     if ((x > width) || (x < 0)) {// If we have reached an edge, reverse speed
     speed = speed * - 1;
    }
  
  
  }
  
  void bounce() {
     if ((x > width) || (x < 0)) {// If we have reached an edge, reverse speed
     speed = speed * - 1;
    }
  
  }
 
}
    