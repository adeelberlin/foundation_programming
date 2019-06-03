
void setup(){
  size(200,200);
};


void draw(){
 background(255); 
 stroke(256,0,128);
 fill(255,126,0);
 rectMode(CENTER);
 rect(mouseX, mouseY, 100,100);
}; 

// the following code draws squares changing the position of the x and y coordinates depending 
// on the position of the mouse but it keeps the background white so it looks like the sqaure is being dragged
// by the mouse.