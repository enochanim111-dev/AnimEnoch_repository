// =============================================================================
// INFT 425 / INPT 328 — Mid-Semester Practical Examination
// Section B — Object-oriented Dart (B1 and B2)
// =============================================================================

mixin Refundable {
  bool _isRefunded = false;

  bool get isRefunded => _isRefunded;

  void refund() {
    if (_isRefunded) {
      throw StateError('Ticket has already been refunded');
    }
    _isRefunded = true;
  }
}

abstract class Ticket with Refundable {
  final String id;
  final String holder;

  Ticket({required this.id, required this.holder}) {
    if (holder.trim().isEmpty) {
      throw ArgumentError('Holder name cannot be empty');
    }
  }

  double get price;
  String get description;

  @override
  String toString() => '$description (ID: $id, Holder: $holder, GHS ${price.toStringAsFixed(2)})';
}

class StandardTicket extends Ticket {
  StandardTicket({required super.id, required super.holder});

  @override
  double get price => 25.0;

  @override
  String get description => 'Standard Ticket';
}

class VipTicket extends Ticket {
  final List<String> perks;

  VipTicket({
    required super.id,
    required super.holder,
    this.perks = const [],
  });

  @override
  double get price => 150.0 + (perks.length * 20.0);

  @override
  String get description =>
      perks.isEmpty ? 'VIP Ticket' : 'VIP Ticket (${perks.join(', ')})';
}

double totalSales(List<Ticket> tickets) {
  return tickets
      .where((t) => !t.isRefunded)
      .fold(0.0, (sum, t) => sum + t.price);
}

int vipCount(List<Ticket> tickets) {
  return tickets.whereType<VipTicket>().length;
}