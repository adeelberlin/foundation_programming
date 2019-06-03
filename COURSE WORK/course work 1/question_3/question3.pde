int clicked = 0; // variable for mouse click function
float mx = 0; // variable mousex co-ordinate
float my = 0; // variable mousey co-ordinate
float speedx = random(10,20); // variable for x co-ordinate speed. random numbers from 10 till twenty
float speedy = random(10,20); // variable for y co-ordinate speed. random numbers from 10 till twenty

void setup() { // void setup function
  size(600,400); // window size
}

void draw() { // void draw function
   background(250); // background colour white

  if(clicked == 1) { // if clicked variable is 1(true)
    ellipse(mx,my, 40, 40); // ellipse with mouse x and y co-ordinate. 40 height and width
  }
  
    mx = mx + speedx; // set mx to mx plus speedx(random number from 10 till twenty)
    if (mx>= 600||mx<0) // x co-ordinate bounce function
      {
           fill(random(255), random(255), random(255), random(255)); // on bounce x change ellipse colour(random rgba)       
           speedx=speedx*-1; // set speedx to speedx(random number) times minus 1
       }
       
    my = my + speedy;  // set my to my plus speedy(random number from 10 till twenty)
    if (my>= 400||my<0) // y co-ordinate bounce function
      {
           fill(random(255), random(255), random(255), random(255)); // on bounce y change ellipse colour(random rgba)       
           speedy=speedy*-1; // set speedy to speedy(random number) times minus 1
       }
}

void mouseClicked() { // void mouseClicked function
  clicked = 1; // set clicked variable equal to 1(true)
  mx = mouseX; // set mx to current mouse x co-ordinate
  my = mouseY; // set my to current mouse y co-ordinate
}