// =============================================================================
// C2 — formatPrice
// Return the price as text with two decimal places: 25.0 → 'GHS 25.00'
// Variant 9 requirement: Display FREE for free events
// =============================================================================

String formatPrice(double price) {
  if (price == 0.0) {
    return 'FREE';
  }
  return 'GHS ${price.toStringAsFixed(2)}';
}