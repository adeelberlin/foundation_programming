PVector location;
PVector mousePosition;

SnakeCircle sc = new SnakeCircle(50,50, 20, 20);
SnakeCircle sc1 = new SnakeCircle(100,100, 20, 20);

void setup() {
  size(500,500);
    
}

void draw() {
  background(255);
  sc.display();
  sc1.display();
      
}


class SnakeCircle {
float x;
float y; 
float h;
float w;
boolean bulletVisible = false ;
  SnakeCircle(float tempx ,float tempy ,float temph, float tempw) {
  x = tempx;
  y = tempy;
  h = temph;
  w = tempw;
  }
  
  void display() {
  location = new PVector(mouseX-x,mouseY-y);  
  

  ellipse(location.x, location.y, h, w);
  
  }

}