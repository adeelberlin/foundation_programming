int clicked = 0; // variable for mouse click function
int mx = 0; // variable for mouse x co-ordinate
int my = 0; // variable for mouse y co-ordinate
int speedy = 10; // variable for speed y co-ordinate
int speedx = 2; // variable for speed x co-ordinate

void setup() { // void setup function
  size(600,400); // window size width, height
}

void draw() { // void draw function
   background(250); // background colour white

  if(clicked == 1) { //if statement to check if mouse is 1(clicked)
    ellipse(mx,my, 40, 40); // ellipse with mouse x and y co-ordinate. 40 height and width
  }
  
      my = my + speedy; // set my to my plus speedy(5)
    if (my>= 400||my<0) // bounce effect
      {    
           speedy=speedy*-1; // set speedy to speedy times minus 1
       } 
       
    mx = mx + speedx; // set mx to mx plus speedy(5)
    if (mx>= 600||mx<0) // bounce effect
      {    
           speedx=speedx*-1; // set speedy to speedx times minus 1
       } 
}

void mouseClicked() { // mouse clicked function
  clicked = 1; // change mouse clicked funtion to 1(true).
  mx = mouseX; // set mx to current mousex position
  my = mouseY; // set my to current mousey position
}