int[] numbers = new int[10];

int temp;

void setup() {
  for(int i = 0; i<10; i++) {
    numbers[i] = i+1;
  }
  
   for (int i = 0; i < numbers.length; i++) {
    numbers[i] = numbers[i] * numbers[i];

   }
    println(numbers);
         
}