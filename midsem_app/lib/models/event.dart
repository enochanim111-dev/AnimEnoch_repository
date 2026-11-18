// =============================================================================
// Provided — do not change this file.
// =============================================================================

class CampusEvent {
  final String id;
  final String title;
  final String venue;
  final DateTime date;
  final double price; // 0.0 means the event is free
  final int capacity;
  final int seatsLeft;
  final String category;
  final bool isFeatured;

  CampusEvent({
    required this.id,
    required this.title,
    required this.venue,
    required this.date,
    required this.price,
    required this.capacity,
    required this.seatsLeft,
    required this.category,
    this.isFeatured = false,
  });

  /// First letter of the title, upper-case. Use it inside the avatar.
  String get initial => title.isNotEmpty ? title[0].toUpperCase() : '?';

  /// True when there are no seats left.
  bool get isSoldOut => seatsLeft == 0;

  /// True when the event costs nothing.
  bool get isFree => price == 0;

  /// Date and time as text, e.g. '5/12/2026 18:30'.
  String get dateLabel {
    final h = date.hour.toString().padLeft(2, '0');
    final m = date.minute.toString().padLeft(2, '0');
    return '${date.day}/${date.month}/${date.year} $h:$m';
  }
}
