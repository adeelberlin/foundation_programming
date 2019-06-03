int[] numbers = new int[10];

int temp;
void setup() {
  for(int i = 0; i<10; i++) {
    numbers[i] = (int)random(10, 100);
  }
  
   for (int i = 0; i < numbers.length; i++)   
{


    for (int j = 0; j < i; j++)
  {

      if (numbers[i] < numbers[j])
    {
        temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
        }
      }
   }
         println(numbers);

}