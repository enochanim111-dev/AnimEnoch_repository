// =============================================================================
// INFT 425 / INPT 328 — Mid-Semester Practical Examination
// B3 — Debug exercise (8 marks)
// =============================================================================

class EventWallet {
  final String owner;
  double _balance;
  final List<String> _history = [];

  EventWallet({required this.owner, required double initialBalance})
      : _balance = initialBalance {
    if (initialBalance < 0) {
      throw ArgumentError('Initial balance cannot be negative');
    }
  }

  double get balance => _balance;
  List<String> get history => List.unmodifiable(_history);

  void topUp(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Top-up amount must be greater than 0');
    }
    _balance += amount;
    _history.add('topUp:$amount');
  }

  void pay(double amount) {
    if (amount <= 0) {
      throw ArgumentError('Amount must be positive');
    }
    if (amount > _balance) {
      throw StateError('Insufficient funds');
    }
    _balance -= amount;
    _history.add('pay:$amount');
  }

  void applyCashback(int percent) {
    _balance += _balance * (percent / 100);
    _history.add('cashback:$percent%');
  }

  @override
  String toString() =>
      'EventWallet($owner, GHS ${_balance.toStringAsFixed(2)})';
}