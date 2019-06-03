String mystring = "myString";

void setup() {


}

void draw() {
if(keyPressed) {
  if(key == 'm' || key=='y' || key=='S' || key=='s' || key=='t' || key=='r' || key=='i' || key=='n' || key=='g') {
    println(key);
  
  } else {
    println(false);  
  }
}


}