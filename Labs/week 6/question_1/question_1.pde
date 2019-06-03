
int num = 5;
for(int i=0; i<num; i++) 

{

       if(i==0 || i==num-1)

{
    for(int j=0;j<num;j++) 
    print("*");
    println();
}
else
{

print("*");
for(int k=1;k<num-1;k++) 
print(" ");
println("*");
}
}