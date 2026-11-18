// =============================================================================
// A6 (5 marks) — Write at least 8 tests of your own. Run with: dart test
// =============================================================================
import 'package:test/test.dart';
import 'package:midsem_dart/midsem.dart';

void main() {
  group('ticketCategory()', () {
    test('30 is Adult', () {
      expect(ticketCategory(30), 'Adult');
    });

    test('boundary ages 11 (Child) and 12 (Teen)', () {
      expect(ticketCategory(11), 'Child');
      expect(ticketCategory(12), 'Teen');
    });

    test('boundary ages 17 (Teen), 18 (Adult), 59 (Adult), 60 (Senior)', () {
      expect(ticketCategory(17), 'Teen');
      expect(ticketCategory(18), 'Adult');
      expect(ticketCategory(59), 'Adult');
      expect(ticketCategory(60), 'Senior');
    });

    test('throws ArgumentError for negative age or age > 120', () {
      expect(() => ticketCategory(-1), throwsArgumentError);
      expect(() => ticketCategory(121), throwsArgumentError);
    });
  });

  group('ticketPrice()', () {
    test('applies both 10% member discount and 5% bulk discount for quantity >= 5', () {
      final price = ticketPrice(category: 'Adult', quantity: 5, isMember: true);
      expect(price, closeTo(106.875, 0.001));
    });

    test('throws ArgumentError for invalid quantity or unknown category', () {
      expect(() => ticketPrice(category: 'Adult', quantity: 0), throwsArgumentError);
      expect(() => ticketPrice(category: 'VIP', quantity: 2), throwsArgumentError);
    });
  });

  group('parseQuantity()', () {
    test('trims whitespace and parses valid whole numbers', () {
      expect(parseQuantity(' 3 '), 3);
    });

    test('throws FormatException for non-numeric or zero/negative input', () {
      expect(() => parseQuantity('abc'), throwsFormatException);
      expect(() => parseQuantity('0'), throwsFormatException);
      expect(() => parseQuantity('-5'), throwsFormatException);
    });
  });

  group('Collections & Summaries (A4)', () {
    test('totalRevenue returns 0 for an empty list and sums non-empty list', () {
      expect(totalRevenue([]), 0.0);
      expect(totalRevenue([10.0, 25.5, 14.5]), closeTo(50.0, 0.001));
    });

    test('countByCategory counts occurrences accurately', () {
      expect(countByCategory(['Adult', 'Child', 'Adult']), {'Adult': 2, 'Child': 1});
      expect(countByCategory([]), {});
    });

    test('bigSpenders filters by threshold and sorts alphabetically', () {
      final data = {'Kofi': 50.0, 'Ama': 120.0, 'Esi': 100.0};
      expect(bigSpenders(data, 100.0), ['Ama', 'Esi']);
    });

    test('uniqueBuyers trims, lowercases, and ignores empty strings', () {
      expect(uniqueBuyers(['Ama', ' ama', 'KOFI', '  ', '']), {'ama', 'kofi'});
    });
  });
}