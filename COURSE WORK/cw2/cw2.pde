int counter = 0;
// counter will function as timer
int step = 0;
// step will track which state light(s) are in

road r1 = new road(0,250,150,700);
road r2 = new road(220,0,700,150);

traffic_light t1 = new traffic_light(160,140,0);
traffic_light t2 = new traffic_light(390,140,300);
traffic_light t3 = new traffic_light(160,420,0);
traffic_light t4 = new traffic_light(390,420,600);

car c1 = new car(10,260,80,40,10,0);
car c2 = new car(-200,260,80,40,10,0);
car c3 = new car(-290,260,80,40,10,0);
car c4 = new car(-400,260,80,40,10,0);

car c5 = new car(600,350,80,40,0,0);
car c6 = new car(800,350,80,40,0,0);
car c7 = new car(1000,350,80,40,0,0);
car c8 = new car(1200,350,80,40,0,0);

car c9 = new car(240,0,40,80,0,10);
car c10 = new car(240,-158,40,80,0,5);
car c11 = new car(240,-250,40,80,0,10);
car c12 = new car(240,-350,40,80,0,10);

car c13 = new car(320,700,40,80,0,10);
car c14 = new car(320,1000,40,80,0,10);
car c15 = new car(320,1400,40,80,0,10);
car c16 = new car(320,1900,40,80,0,10);




void setup() {
  background(51,255,51);
  size(700,700);
}


void draw() {
r1.display();
r2.display();

t1.display();
t1.advanceCounter();

t2.display();
t2.advanceCounter();

t3.display();
t3.advanceCounter();

t4.display();
t4.advanceCounter();

c1.display();
c1.move();

c2.display();
c2.move();

c3.display();
c3.move();

c4.display();
c4.move();

c5.display();
c5.moveReverse();

c6.display();
c6.moveReverse();

c7.display();
c7.moveReverse();

c8.display();
c8.moveReverse();

c9.display();
c9.moveReverseY();

c10.display();
c10.moveReverseY();

c11.display();
c11.moveReverseY();

c12.display();
c12.moveReverseY();

c13.display();
c13.moveY();

c14.display();
c14.moveY();

c15.display();
c15.moveY();

c16.display();
c16.moveY();

    fill(255,255,0);
    line(30, 20, 85, 20);
    stroke(400);
    
}

class road {
  
  float x;
  float y;
  float h;
  float w;
    road(float tempx, float tempy, float temph, float tempw) {
      x = tempx;
      y = tempy;
      h = temph;
      w = tempw;
    
    }
  
  void display() {
    noStroke();
    fill(187,187,187);
    rect(x,y,w,h);
  }
 
}



class traffic_light {
  
  float x;
  float y;
  float r;
  
    traffic_light(float tempX, float tempY, float tempR) {
      x = tempX;
      y = tempY;
      r = tempR;
    }

  void advanceCounter() {
  // main logic for state machine 
  counter++;
  if (counter==400) {
    counter=0;
    step=0;
  } else if (counter==200) {
    step=1;
  } else if (counter==280) {
    step=2;
  } 
}
 
 
void display(){
  fill(100);
  rect(x,y,40,100);
   
  // red light
  if (step==2) {
    fill(255,0,0);
  } else {
    fill(100);
  }
  ellipse(x+20,y+20,20,20);
   
  // yellow light
 if (step==1) {
    fill(#EEF22C); 
    ellipse(x+20,y+50,20,20);
  } 
   
  // green light
  if (step==0) {
    fill(0,255,0);
    ellipse(x+20,y+80,20,20);
  }
}
  
}

class car {
  float x;
  float y;
  float h;
  float w;
  color c;
  float speedX ;
  float speedY;
  
    car(float tempX, float tempY, float tempH, float tempW, float tempSpeedX, float tempSpeedY) {
      x = tempX;
      y = tempY;
      h = tempH;
      w = tempW;
      c = color(random(255),random(255),random(255));
      speedX = tempSpeedX;
      speedY = tempSpeedY;
    
    }
    
    void move() {
       y = y + speedY;
      x = x + speedX;
     
     if (x > width) x = 0;
     if (y > width) y = 0;
        if (step==2) {
        speedX = 0;
        speedY = 0;
        
      } else {
        speedX = 10;
      }
   } 
   
       void moveReverse() {

      x = x - speedX;
     
     if (x == 0) x = 700;

      if (step==2) {
        speedX = 0;
        speedY = 0;
        
      } else {
        speedX = 10;
      }
   } 
   
     void moveReverseY() {

      y = y + speedY;
     
     if (y == 700) y = 0;

      if (step==2) {
        speedY = 0;
        
      } else {
        speedY = 10;
      }
   } 
   
     void moveY() {

      y = y - speedY;
     
     if (y == 0) y = 700;

      if (step==2) {
        speedY = 0;
        
      } else {
        speedY = 10;
      }
   } 
    
    void display() {
      fill(c);
      rect(x,y,h,w);
      
      fill(80);
      rect(x+20, y, 20, w);
    
    
    }

}