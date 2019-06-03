PImage img;
PImage bg;
boolean touched = false;
boolean touched2 = false;
boolean touched3 = false;
boolean touched4 = false;
boolean touched5 = false;
Soldier s1 = new Soldier(500,80,40,40);
Enemy e1 = new Enemy(0,30,50,50);
Enemy e2 = new Enemy(10,130,50,50);
Enemy e3 = new Enemy(15,200,50,50);
Enemy e4 = new Enemy(20,280,50,50);
Enemy e5 = new Enemy(25,350,50,50);
Missiles[] missiles;

    void setup () {
      size(500, 500);
      missiles = new Missiles[9];
      for (int i=0; i<9; i++) {    
        missiles[i]= new Missiles(mouseY,mouseY, -20, 0, 20, 5);
      }
    }
    
    void draw() {
      bg = loadImage("bg.jpg");
      background(bg);
      
      s1.draw();
      e1.draw();
      e2.draw();
      e3.draw();
      e4.draw();
      e5.draw();
      
      if(touched == true) {
        e1.remove();
      }
      if(touched2 == true) {
        e2.remove();
      }
      if(touched3 == true) {
        e3.remove();
      }
      if(touched4 == true) {
        e4.remove();
      }
      if(touched5 == true) {
        e5.remove();
      }
      for (int i=0; i<9; i++) {
        if (missiles[i].missileVisible==true) {
          missiles[i].display();
          missiles[i].move();
        }
      }
    }

    void keyReleased() {
      if (key==' ') {
        for (int i=0; i<9; i++) {
          if (!missiles[i].missileVisible) {
            missiles[i].missileVisible=true;
            missiles[i].life = 255;
            missiles[i].x=mouseX;
            missiles[i].y=mouseY ;
            break;
          } 
            if(dist(missiles[i].x, missiles[i].y, e1.x,e1.y)<=80) {
            touched = true;
            }
            if(dist(missiles[i].x, missiles[i].y, e2.x,e2.y)<=80) {
            touched2 = true;
            }
            if(dist(missiles[i].x,missiles[i].y, e3.x,e3.y)<=80) {
            touched3 = true;
            }
            if(dist(missiles[i].x, missiles[i].y, e4.x,e4.y)<=80) {
            touched4 = true;
            }
            if(dist(missiles[i].x, missiles[i].y, e5.x,e5.y)<=80) {
            touched5 = true;
            }
        } 
      } 
    } 
    
public class Enemy {
  float x;
  float y;
  float h;
  float w;
  
    Enemy(float tempx, float tempy , float temph, float tempw) {
      x = tempx;
      y = tempy;
      h = temph;
      w = tempw;
    }
  
    void remove() {
      img = loadImage("blank.jpg");;
      image(img, x, y, h, w);
  }
  
  void draw() {
    img = loadImage("alienblaster.png");
    image(img, x++, y, h, w); 
  };
}
    
class Missiles {
  
      float x;
      float y;
      float speedX ;
      float speedY;
      float w;
      float h;
      float life = 255;
      boolean missileVisible = false ;

      Missiles(float tempX, float tempY, float tempSpeedX, float tempSpeedY, float tempW, float tempH) {
        x = tempX;
        y = tempY;
        w = tempW;
        h = tempH;
        speedX = tempSpeedX;
        speedY = tempSpeedY;
      }
      void move() {
        x = x + speedX;
        y = y + speedY;
        if (x<4)
          life=-1;
        if (y<4)
          life=-1;
        if (x>width-4)
          life=-1;
        if (y>width-4)
          life=-1;
        if (life==-1) {
          missileVisible = false ;
        }
      } 

      void display() {
        fill(244, 2, 2);
        noStroke();
        rect(x, y, w, h);
      }
} 

public class Soldier {
  float x;
  float y;
  float h;
  float w;
  
    Soldier(float tempx, float tempy, float temph, float tempw) {
      x = tempx;
      y = tempy;
      h = temph;
      w = tempw;
    }
    
    void draw() {
    img = loadImage("kspaceduel.png");
    image(img, 450, mouseY, h, w);
    }
}