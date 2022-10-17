class BankAccount {
  BankAccount({
    required this.accountHolder,
    this.balance = 0,
  });

  String accountHolder;
  double balance;

  void deposit(double amount) => balance += amount;

  bool withdraw(double amount) {
    if (balance > amount) {
      balance -= amount;
      return true;
    }

    return false;
  }
}

void main() {
  final bankAccount = BankAccount(accountHolder: 'Muhsin Arslan', balance: 500);
  print(
      '${bankAccount.accountHolder} : \$${bankAccount.balance.toStringAsFixed(2)}');
}
