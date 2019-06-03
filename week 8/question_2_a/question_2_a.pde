void setup() {
  println(drawSquare(10,20,50,50));

}

int drawSquare(int xpos, int ypos, int r, int h) {
rectMode(CORNER);
rect(xpos,ypos,r,h);

return xpos;

}