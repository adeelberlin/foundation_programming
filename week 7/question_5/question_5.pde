int[] numbers = new int[10];
int largest = numbers[0];
int average = 0;
int smallest = numbers[0];

int temp;



void setup(){    
  
    for(int i = 0; i<10; i++) {
    numbers[i] = (int)random(10, 100);
    
    if (numbers[i] > largest) {
     largest = numbers[i];
    }

    average += numbers[i];
  }
  
   for (int i = 0; i < numbers.length; i++) {

    for (int j = 0; j < i; j++) {
      if (numbers[i] < numbers[j]) {
        temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
        }
      }
   }
   
   smallest = numbers[0];

println(numbers);         
         
println("the largest number is" + " " + largest);
println("the smallest number is" + " " + smallest);
println("the average is" + " " +(double)average/numbers.length);
  
      
}