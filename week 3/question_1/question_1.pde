int i =500;
int j = 0;
int k =0;
int l =500;
int c =0;
int d = 500;
int y = 0;
int q = 500;
int p= 500;


void setup() { 
  size(500, 500); 
 fill(255,0, 255);      
};

boolean moveright=true;
boolean moveleft= true;

void draw() { 
 background(255,255,255);  
 ellipse(i, height/2, 100 , 100);
 i--;
  
 ellipse(j, height/2, 100 , 100);
 j++;
 
 ellipse(250, k, 100 , 100);
 k++;
 
 ellipse(250, l, 100 , 100);
 l--;
 
 ellipse(c, y, 100 , 100);
 c++;
 y++;
 
 ellipse(d, y, 100 , 100);
 d--;
 
 ellipse(d, q, 100 , 100);
 q--;
 
 ellipse(j, p , 100, 100);
 p--;
};