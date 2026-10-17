// Part 9: Error Handling — try/catch/finally + custom exceptions

class NegativeNumberException implements Exception {
  final String message;
  NegativeNumberException(this.message);

  @override
  String toString() => "NegativeNumberException: $message";
}

double divide(int a, int b) {
  if (b == 0) {
    throw ArgumentError("Cannot divide by zero");
  }
  if (a < 0 || b < 0) {
    throw NegativeNumberException("Negative numbers not allowed");
  }
  return a / b;
}

void main() {
  try {
    print("10 / 2 = ${divide(10, 2)}");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Calculation complete");
  }

  try {
    print("10 / 0 = ${divide(10, 0)}");
  } catch (e) {
    print("Error: $e");
  } finally {
    print("Calculation complete");
  }

  try {
    print("(-5) / 2 = ${divide(-5, 2)}");
  } on NegativeNumberException catch (e) {
    print("Custom error: $e");
  } finally {
    print("Calculation complete");
  }
}