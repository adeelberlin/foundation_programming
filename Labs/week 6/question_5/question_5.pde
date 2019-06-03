
for (int i = 1; i <= 9; i+=2)
 {
      for (int j = 1; j <= (9 - i); j++)
     {
       print(" ");
     }
    for (int k = 1; k <= i; k++)
     {
         print(" * ");
     }
     println();
}