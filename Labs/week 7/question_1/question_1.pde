int [] array = new int[10];
int largest = array[0];
int average = 0;
int smallest = array[0];

for(int i=0; i<array.length; i++) {
  array[i] = (int)random(0,9);
  if (array[i] > largest) {
  
  largest = array[i];
  }
  
  if(array[i] < largest) {
    smallest = array[i];
  }
  
  average += array[i];
}
println(array);
println();
println("the largest number is" + " " + largest);
println("the smallest number is" + " " + smallest);
println("the average is" + " " +(double)average/array.length);