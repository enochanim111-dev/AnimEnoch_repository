// Part 8: Encapsulation - Getters and Setters
// Demonstrates private fields and validation.

class BankAccount {
  double _balance = 0;
  String _owner;
  List<String> _transactions = []; // Added custom field

  BankAccount(this._owner);

  double get balance => _balance;
  String get owner => _owner;

  // Added custom setter with validation
  set owner(String newOwner) {
    if (newOwner.trim().isEmpty) {
      throw ArgumentError("Owner name cannot be empty");
    }
    _owner = newOwner;
  }

  void deposit(double amount) {
    if (amount <= 0) throw ArgumentError("Deposit must be positive");
    _balance += amount;
    _transactions.add("Deposited: \$$amount");
    print("Deposited: \$$amount, New balance: \$$_balance");
  }

  void withdraw(double amount) {
    if (amount <= 0) throw ArgumentError("Withdrawal must be positive");
    if (amount > _balance) throw StateError("Insufficient funds");
    _balance -= amount;
    _transactions.add("Withdrew: \$$amount");
    print("Withdrew: \$$amount, New balance: \$$_balance");
  }

  void transfer(BankAccount other, double amount) {
    withdraw(amount);
    other.deposit(amount);
    _transactions.add("Transferred: \$$amount to ${other.owner}");
  }
}

void main() {
  BankAccount acc1 = BankAccount("Ama");
  BankAccount acc2 = BankAccount("Kofi");

  print("--- Transactions ---");
  acc1.deposit(200);
  acc1.withdraw(50);
  acc1.transfer(acc2, 100);

  print("\n--- Errors ---");
  try {
    acc1.withdraw(1000); // Should fail
  } catch (e) {
    print("Error: $e");
  }

  try {
    acc1.owner = ""; // Should fail (custom setter)
  } catch (e) {
    print("Error: $e");
  }

  print("\n--- Final Balances ---");
  print("${acc1.owner}'s balance: \$${acc1.balance}");
  print("${acc2.owner}'s balance: \$${acc2.balance}");
}