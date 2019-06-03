void setup() {
  println(drawElliplse(10,20,25,25));

}

int drawElliplse(int xpos, int ypos, int w, int i) {
ellipseMode(CORNER);
ellipse(xpos,ypos,w,i);

return xpos;

}