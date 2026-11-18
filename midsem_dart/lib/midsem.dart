// =============================================================================
// INFT 425 / INPT 328 — Mid-Semester Practical Examination
// Section A — Dart logic and collections (35 marks)
//
// Complete every function marked TODO.
// Do NOT rename any function or change its parameters or return type.
// Your work is marked with automated tests that call these exact signatures.
// =============================================================================

/// Base ticket prices in GHS for each category. Do not change this map.
const Map<String, double> basePrices = {
  'Child': 10.0,
  'Teen': 15.0,
  'Adult': 25.0,
  'Senior': 12.0,
};

/// A1 (5 marks) — Returns the ticket category for [age].
///
///   0–11   → 'Child'
///   12–17  → 'Teen'
///   18–59  → 'Adult'
///   60–120 → 'Senior'
///
/// Throw an ArgumentError if [age] is below 0 or above 120.
/// You must use a switch expression for the category logic.
String ticketCategory(int age) {
  if (age < 0 || age > 120) {
    throw ArgumentError('Age must be between 0 and 120');
  }

  return switch (age) {
    >= 0 && <= 11 => 'Child',
    >= 12 && <= 17 => 'Teen',
    >= 18 && <= 59 => 'Adult',
    _ => 'Senior',
  };
}

/// A2 (8 marks) — Returns the total price for [quantity] tickets of
/// [category].
///
///   1. Throw an ArgumentError if [quantity] is less than 1.
///   2. Throw an ArgumentError if [category] is not a key in [basePrices].
///   3. total = base price × quantity
///   4. If [isMember] is true, take 10% off the total.
///   5. If [quantity] is 5 or more, take a further 5% off.
double ticketPrice({
  required String category,
  required int quantity,
  bool isMember = false,
}) {
  if (quantity < 1) {
    throw ArgumentError('Quantity must be at least 1');
  }
  final basePrice = basePrices[category];
  if (basePrice == null) {
    throw ArgumentError('Unknown ticket category: $category');
  }

  var total = basePrice * quantity;
  if (isMember) {
    total *= 0.90;
  }
  if (quantity >= 5) {
    total *= 0.95;
  }
  return total;
}

/// A3 (4 marks) — Converts text typed by a user into a ticket quantity.
///
///   - Ignore spaces before and after the number: ' 3 ' → 3
///   - Throw a FormatException with the message 'Invalid quantity: <input>'
///     if the text is not a whole number, or if the number is less than 1.
int parseQuantity(String input) {
  final trimmed = input.trim();
  final quantity = int.tryParse(trimmed);
  if (quantity == null || quantity < 1) {
    throw FormatException('Invalid quantity: $input');
  }
  return quantity;
}

/// A4(a) (2.5 marks) — Counts how many tickets were sold in each category.
///   ['Adult', 'Child', 'Adult'] → {'Adult': 2, 'Child': 1}
///   []                          → {}
Map<String, int> countByCategory(List<String> categories) {
  final counts = <String, int>{};
  for (final category in categories) {
    counts[category] = (counts[category] ?? 0) + 1;
  }
  return counts;
}

/// A4(b) (2.5 marks) — Returns the sum of all [sales]. An empty list
/// returns 0. Must use fold.
double totalRevenue(List<double> sales) {
  return sales.fold(0.0, (sum, sale) => sum + sale);
}

/// A4(c) (2.5 marks) — Returns the names of buyers who spent AT LEAST
/// [threshold], sorted alphabetically (A–Z).
///   {'Kofi': 50, 'Ama': 120, 'Esi': 100}, threshold 100 → ['Ama', 'Esi']
List<String> bigSpenders(Map<String, double> spendByBuyer, double threshold) {
  final names = spendByBuyer.entries
      .where((entry) => entry.value >= threshold)
      .map((entry) => entry.key)
      .toList();
  names.sort();
  return names;
}

/// A4(d) (2.5 marks) — Returns each buyer once. Names are compared after
/// trimming spaces and converting to lower case. Empty names are ignored.
///   ['Ama', ' ama', 'KOFI', ''] → {'ama', 'kofi'}
Set<String> uniqueBuyers(List<String> buyerNames) {
  final uniqueNames = <String>{};
  for (final name in buyerNames) {
    final normalized = name.trim().toLowerCase();
    if (normalized.isNotEmpty) {
      uniqueNames.add(normalized);
    }
  }
  return uniqueNames;
}
