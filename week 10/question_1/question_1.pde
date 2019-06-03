Account a1 = new Account("Muhammad Masood", 383838, 1000, 50, 1);
Account a2 = new Account("Adeel Masood", 809743, 10000, 1000, 2);


void setup() {
a1.prints();
a1.transactions();

a2.prints();
a2.transactions();
}

void draw() {


}

class Account {

  String name;
  int accountNumber;
  float Balance;
  float withdraw;
  int counter;
  
  Account(String tempname, int tempan, float tempbalance, float tempwithd, int tempc) {
    name = tempname;
    accountNumber = tempan;
    Balance = tempbalance;
    withdraw = tempwithd;
    counter = tempc;
  
  }
  
  void Constructors() {
  
  
  }
  
  void setter() {
    String setName = name;
    int setAccountNumber = accountNumber;
    float setBalance = Balance;
  
  }
  
  void getters() {
   String getName = name;
   int getAccountNumber = accountNumber;
   float getBalance = Balance;
  }
  
  void transactions() {
      println("Transactions:");
      float withdraws = withdraw - Balance;
       if(withdraw > Balance) {
         println("The current transaction could not be completed because you insufficient funds of " + withdraws);
       } else {
         Balance = Balance - withdraw;
         println("Money withdrawn: " + withdraw + " Current balance: "+Balance);
         
       }
  
  }
  
  void prints() {
    println();
    println("Account Name:" + " " + name);
    println("Account Number:" + " " +accountNumber);
    println("Balance:" + " " +Balance);
    println("Counter:" + " " +counter);
  
  
  }

}