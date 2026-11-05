class BankAccount {
    // TODO
    final int _id;
    final String _user;
    double _balance = 0;

    BankAccount( this._id, this._user);

    int get id => _id;
    String get user => _user;
    double get balance => _balance;

    void credit(double amount){
      _balance += amount;
    }

    void withdraw(double amount){
      if(_balance - amount < 0){
        throw Exception('Insufficient balance for withdrawal!');
      }else{
        _balance -= amount;
      }
    }
}

class Bank {
    // TODO
    final String _name;
    final List<BankAccount> _accounts = [];

    Bank({required String name, String? address})
    : _name = name;
    
    String get name => _name;

    BankAccount createAccount(int accountId, String accountUser){
      for (var account in _accounts) {
        if(account.id == accountId){
          throw Exception("Account with ID $accountId already exists!");
        }
      }
      BankAccount newAccout = BankAccount(accountId, accountUser);
      _accounts.add(newAccout);
      return newAccout;
    }
}
 
void main() {

   Bank myBank = Bank(name: "CADT Bank");
   BankAccount ronanAccount = myBank.createAccount(100, 'Ronan');

   print("\$${ronanAccount.balance.toStringAsFixed(0)}"); // Balance: $0
   ronanAccount.credit(100);
   print("\$${ronanAccount.balance.toStringAsFixed(0)}"); // Balance: $100
   ronanAccount.withdraw(50);
   print("\$${ronanAccount.balance.toStringAsFixed(0)}"); // Balance: $50

   try {
     ronanAccount.withdraw(75); // This will throw an exception
   } catch (e) {
     print(e); // Output: Insufficient balance for withdrawal!
   }

   try {
     myBank.createAccount(100, 'Honlgy'); // This will throw an exception
   } catch (e) {
     print(e); // Output: Account with ID 100 already exists!
   }
}
