size(600,600);


for(int i=600; i>0; i-=20) {
ellipseMode(CENTER);

ellipse(300,300,20-i,20-i);
fill( random(125), random(255), random(255), random(255)); 
}