int clicked = 0; // variable for click function
int mx = 0; // variable for mouse x co-ordinate
int my = 0; // variable for mouse y co-ordinate
int speedx = 10; // variable for the speed of x co-ordinate
int speedy = 2; // variable for the speed of x co-ordinate

void setup() { // void setup function
  size(600,400); // screen size 600 width 400 height
}

void draw() { // void draw function
   background(250); // background colour white

  if(clicked == 1) { // if statement when mouse is clicked
    ellipse(mx,my, 40, 40); // ellipse with mouse x and y co-ordinate. 40 height and width
  }
  
    mx = mx + speedx; // set mx equal to mx plus speedx(10)
    if (mx>= 600||mx<0) // bounce effect 
      {
           speedx=speedx*-1; // set speedx to speedx times minus 1
       } 
       
    my = my + speedy; // set my equal to my plus speedy(2)
    if (my>= 400||my<0) // bounce effect 
      {
           speedy=speedy*-1; // set speedy to speedy times minus 1
       } 
}

void mouseClicked() { // mouse clicked function
  clicked = 1; // changed clicked variable to one (true)
  mx = mouseX; // set mouse x variable to current mousex positions
  my = mouseY; // set mouse y variable to current mousey position
}