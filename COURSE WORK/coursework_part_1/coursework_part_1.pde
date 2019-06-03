int counter = 0;
int step = 0;

int counter1 = 0;
int step1 = 2;

Car[] carx;
Car[] cary;
Car[] caryreverse;
Car[] carxreverse;

road r1 = new road(0,250,150,700);
road r2 = new road(220,0,700,150);

traffic_light t1 = new traffic_light(160,140,0);
traffic_light t2 = new traffic_light(390,140,300);
traffic_light t3 = new traffic_light(160,420,0);
traffic_light t4 = new traffic_light(390,420,600);

void setup() {
  background(51,255,51);
  size(700,700);
  
  carx = new Car[2];
  cary = new Car[2];
  caryreverse = new Car[2];
  carxreverse = new Car[2];
 
  for(int i =0; i<2; i++) {
    carx[i]= new Car(i*400,260,80,40,10,0);
    cary[i]= new Car(240,i*100,40,80,0,10);
    caryreverse[i]= new Car(320,i*160,40,80,0,10);
    carxreverse[i]= new Car(i*400,350,80,40,0,0);
  }
}

void draw() {
r1.display();
r2.display();

t1.display1();
t1.Counter();

t2.display();
t2.advanceCounter();

t3.display();
t3.advanceCounter();

t4.display1();
t4.Counter();

      for (int i=0; i<2; i++) {
          carx[i].display();
          carx[i].move();
          
          carxreverse[i].display();
          carxreverse[i].moveReverse();
          
          cary[i].display();
          cary[i].moveY();
          
          caryreverse[i].display();
          caryreverse[i].moveReverseY();
      }

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

  void Counter() {
  counter1++;
  if (counter1==400) {
    counter1=0;
    step1=2;
  } else if (counter1==200) {
    step1=1;
  } else if (counter1==280) {
    step1=0;
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

void display1() {
  
    fill(100);
  rect(x,y,40,100);

    // red light
  if (step1==2) {
    fill(255,0,0);
  } else {
    fill(100);
  }
  ellipse(x+20,y+20,20,20);
   
  // yellow light
 if (step1==1) {
    fill(#EEF22C); 
    ellipse(x+20,y+50,20,20);
  } 
   
  // green light
  if (step1==0) {
    fill(0,255,0);
    ellipse(x+20,y+80,20,20);
  }



}
}

class Car {
  float x;
  float y;
  float h;
  float w;
  color c;
  float speedX ;
  float speedY;
  
    Car(float tempX, float tempY, float tempH, float tempW, float tempSpeedX, float tempSpeedY) {
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
     
     for(int i=0; i<2; i++) {
        if (step1==2 && dist(carx[i].x,carx[i].y,t1.x,t1.y)<= 130) {
        speedX = 0;
      }
       else {
        speedX=10;
      }
     
     }
   } 
   
    void moveReverse() {
      x = x - speedX;
     if (x == 0) x = 700;
     for(int i=0; i<2; i++) {
     if (step1==2 && dist(carxreverse[i].x,carxreverse[i].y,t4.x,t4.y)<= 125) {

        speedX = 0;
      }
      else {
        speedX = 10;
      }
    }
   } 
   
     void moveReverseY() {
      y = y + speedY;
     if (y == 700) y = 0;
     for(int i=0; i<2; i++) {
     if (step==2 && dist(caryreverse[i].x,caryreverse[i].y,t2.x,t2.y)<= 110) {

        speedY = 0;
      }
      else {
        speedY = 10;
      }
    }
   } 
   
     void moveY() {
      y = y - speedY;
     if (y == 0) y = 700;
     for(int i=0; i<2; i++) {
     if (step==2 && dist(cary[i].x,cary[i].y,t3.x,t3.y)<= 130) {

        speedY = 0;
      }
      else {
        speedY = 10;
      }
    }
   } 
    
    void display() {
      fill(c);
      rect(x,y,h,w);
      
      fill(80);
      rect(x+20, y, 20, w);
    }
}