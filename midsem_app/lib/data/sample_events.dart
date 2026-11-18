// =============================================================================
// Provided — do not change this file (except to test your empty state:
// comment out every event, run, then put them back).
// =============================================================================
import '../models/event.dart';

final List<CampusEvent> sampleEvents = [
  CampusEvent(
    id: 'e1',
    title: 'Tech Talk: Flutter in Production',
    venue: 'Main Auditorium',
    date: DateTime(2026, 12, 3, 10, 0),
    price: 0.0,
    capacity: 200,
    seatsLeft: 54,
    category: 'Tech',
    isFeatured: true,
  ),
  CampusEvent(
    id: 'e2',
    title: 'Gospel Night',
    venue: 'University Chapel',
    date: DateTime(2026, 12, 5, 18, 30),
    price: 25.0,
    capacity: 500,
    seatsLeft: 120,
    category: 'Music',
  ),
  CampusEvent(
    id: 'e3',
    title: 'Inter-Hall Football Final',
    venue: 'Sports Field',
    date: DateTime(2026, 12, 6, 15, 0),
    price: 10.0,
    capacity: 1000,
    seatsLeft: 0,
    category: 'Sports',
    isFeatured: true,
  ),
  CampusEvent(
    id: 'e4',
    title: 'Career Fair 2026',
    venue: 'Conference Centre',
    date: DateTime(2026, 12, 8, 9, 0),
    price: 15.0,
    capacity: 300,
    seatsLeft: 87,
    category: 'Career',
  ),
  CampusEvent(
    id: 'e5',
    title: 'Drama Night: Ananse Returns',
    venue: 'Arts Theatre',
    date: DateTime(2026, 12, 10, 19, 0),
    price: 30.0,
    capacity: 250,
    seatsLeft: 12,
    category: 'Arts',
  ),
  CampusEvent(
    id: 'e6',
    title: 'Hackathon Weekend',
    venue: 'CS Lab 1',
    date: DateTime(2026, 12, 12, 8, 0),
    price: 50.0,
    capacity: 60,
    seatsLeft: 5,
    category: 'Tech',
  ),
];