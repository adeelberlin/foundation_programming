PVector location;
PVector mousePosition;

  
SnakeCircle sc = new SnakeCircle(mouseX,mouseY,100,100);
void setup() {
  size(500,500);

}

void draw() {
  background(255);
  sc.draw();
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
  
  void draw() {
  location = new PVector(mouseX,mouseY);  
  

  ellipse(location.x, location.y, h, w);
  
  }

}