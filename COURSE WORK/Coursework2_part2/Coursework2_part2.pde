PImage img;
PImage img1;
int value = 0;
Soldier s1 = new Soldier(100,30,40,40);

ArrayList enemies = new ArrayList();

Missiles e3 = new Missiles(500,80,40,40);




void setup() {
  size(500,500);
  background(255,255,255);
  createEnemies();

}

void draw() {
   background(255,255,255);
   
   s1.draw();

 
    for (int i = 0; i < enemies.size(); i++) {
        Enemy enemy = (Enemy) enemies.get(i);

            enemy.draw();

    }




}

void createEnemies() {
    //for (int i = 0; i < 10; i++) {
        for (int j = 0; j <= 10; j+=3) {
            enemies.add(new Enemy(10,10*j,40,40));
        }
    //}
}

void mouseClicked() {

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
  
  void draw() {
    img = loadImage("alienblaster.png");
    image(img, x++, y, h, w);
    //ellipse(x++,y,h,w);
      
  };
 
}

public class Missiles {
float x;
float y;
float h;
float w;
float speedx;
float speedy;
float life;
boolean visible;

  Missiles(float tempx, int tempy, float temph, float tempw) {
    x = tempx;
    y = tempy;
    h = temph;
    w = tempw;


  }
  
 
  
  void draw() {
    fill(255,0,0);
    rect(x--,y,h,w);
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
    image(img, mouseX, mouseY, h, w);
    
    }
    
    void remove() {
    image(img, 600, 600, 0, 0);
    
    }

  

}