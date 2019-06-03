PVector location;

SnakeCircle sc = new SnakeCircle(100,100,100,100);

void setup() {
  size(500,500);

}

void draw() {
  sc.display();
}


class SnakeCircle {
float x;
float y; 
float h;
float w;
  SnakeCircle(float tempx ,float tempy ,float temph, float tempw) {
  x = tempx;
  y = tempy;
  h = temph;
  w = tempw;
  }
  
  void display() {
  location = new PVector(x,y);  

  ellipse(location.x, location.y, h, w);
  
  }

}