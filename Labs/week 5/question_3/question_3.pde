void setup() {
  size(620, 420);
};

void draw() {
  for(int i=0; i<620; i+=20)
   {
      line(20+i, 0, 20+i, 420);
      line(620, 20+i, 0, 20+i);

   }
};