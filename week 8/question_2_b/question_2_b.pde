void setup() {
  println(drawRectange(10,20,50,25));

}

int drawRectange(int xpos, int ypos, int w, int i) {
rectMode(CORNER);
rect(xpos,ypos,w,i);

return xpos;

}