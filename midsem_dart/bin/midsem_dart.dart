// =============================================================================
// INFT 425 / INPT 328 — Mid-Semester Practical Examination
// A5 (3 marks) — Section A report. Run with: dart run
// =============================================================================
import 'package:midsem_dart/midsem.dart';

void main() {
  print('=== SECTION A REPORT ===');

  const ages = [5, 15, 30, 65];
  final List<double> collectedPrices = [];

  for (final age in ages) {
    final category = ticketCategory(age);
    final price = ticketPrice(category: category, quantity: 2, isMember: false);
    collectedPrices.add(price);
    print('Age $age → $category → 2 tickets: GHS ${price.toStringAsFixed(2)}');
  }

  final total = totalRevenue(collectedPrices);
  print('Total Revenue for sample ages: GHS ${total.toStringAsFixed(2)}');

  try {
    parseQuantity('abc');
  } on FormatException catch (e) {
    print(e.message);
  } finally {
    print('Validation complete');
  }

  const sold = ['Adult', 'Child', 'Adult', 'Senior', 'Teen', 'Adult'];
  const spend = {'Ama': 120.0, 'Kofi': 45.5, 'Esi': 200.0, 'Yaw': 99.99};
  const buyers = ['Ama', ' ama', 'Kofi', 'KOFI ', 'Esi'];

  print('Count by category: ${countByCategory(sold)}');
  print('Big spenders (>= 100): ${bigSpenders(spend, 100.0)}');
  print('Unique buyers: ${uniqueBuyers(buyers)}');

  print('========================================');
  print('Built by Enoch Anim — Index 224EI02003709 — Variant 9');
  print('========================================');
}