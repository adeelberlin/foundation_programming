void setup() {
  println(absoluteValue(-1));

}

int absoluteValue(int number) {

if(number < 0) {
  number = number * -1;
}

return number;

}