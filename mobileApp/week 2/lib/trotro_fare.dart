// Calculates trotro fare based on distance, time, and passenger type.

double calculateFare({
  required double distanceKm,
  required bool isPeak,
  required bool isStudent,
  required int age,
  required bool isWeekend,
}) {
  // Validate input
  if (distanceKm < 0) {
    throw ArgumentError("Distance cannot be negative");
  }
  if (age < 0 || age > 120) {
    throw ArgumentError("Age must be between 0 and 120");
  }
  
  // Base fare
  double fare = 2.50 + (0.80 * distanceKm);
  
  // Peak surcharge
  if (isPeak) {
    fare = fare * 1.20;
  }
  
  // Weekend discount
  if (isWeekend) {
    fare = fare * 0.90;
  }
  
  // Student discount
  if (isStudent) {
    fare = fare * 0.85;
  }
  
  // Senior discount (overrides student)
  if (age >= 65) {
    fare = fare * 0.70;
  }
  
  return fare;
}

void main() {
  // Test scenario 1: 3 km, not peak, student, age 22, not weekend
  double fare1 = calculateFare(
    distanceKm: 3, isPeak: false, isStudent: true, age: 22, isWeekend: false);
  print("Scenario 1: GHS ${fare1.toStringAsFixed(2)}");
  
  // Test scenario 2: 8 km, peak, not student, age 40, weekend
  double fare2 = calculateFare(
    distanceKm: 8, isPeak: true, isStudent: false, age: 40, isWeekend: true);
  print("Scenario 2: GHS ${fare2.toStringAsFixed(2)}");
  
  // Test scenario 3: 12 km, peak, not student, age 70, not weekend
  double fare3 = calculateFare(
    distanceKm: 12, isPeak: true, isStudent: false, age: 70, isWeekend: false);
  print("Scenario 3: GHS ${fare3.toStringAsFixed(2)}");
}