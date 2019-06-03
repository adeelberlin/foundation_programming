
void setup(){
     size(200,200);
     background(255); 
};

void draw(){
  stroke(256,0,128);
   fill(255,126,0);
   rectMode(CENTER);
   rect(mouseX, mouseY, 100,100);
}; 

// the following code keeps on drawing squares on the screen and 
//its x and y coordinates keep changing depending on the posiion of where the mouse cursor is.
// the void draw keeps on running the function infinately.