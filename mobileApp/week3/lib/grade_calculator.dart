// Part 13: Grade Calculator Challenge

class InvalidScoreException implements Exception {
  final String message;
  InvalidScoreException(this.message);

  @override
  String toString() => "InvalidScoreException: $message";
}

void validateScore(String name, int score) {
  if (score < 0 || score > 100) {
    throw InvalidScoreException("$name must be between 0 and 100, got $score");
  }
}

String calculateGrade(int score) {
  if (score >= 80) return "A";
  if (score >= 70) return "B";
  if (score >= 60) return "C";
  if (score >= 50) return "D";
  return "F";
}

double calculateWeightedAverage({
  required int lab1,
  required int lab2,
  required int assignment,
  required int midSem,
  required int finalExam,
}) {
  validateScore("Lab 1", lab1);
  validateScore("Lab 2", lab2);
  validateScore("Assignment", assignment);
  validateScore("Mid-Semester", midSem);
  validateScore("Final Exam", finalExam);

  return (lab1 * 0.10) +
         (lab2 * 0.10) +
         (assignment * 0.20) +
         (midSem * 0.25) +
         (finalExam * 0.35);
}

void main() {
  int lab1 = 85;
  int lab2 = 90;
  int assignment = 88;
  int midSem = 82;
  int finalExam = 79;

  try {
    print("Lab 1: $lab1");
    print("Lab 2: $lab2");
    print("Assignment: $assignment");
    print("Mid-Semester: $midSem");
    print("Final Exam: $finalExam");

    double average = calculateWeightedAverage(
      lab1: lab1, lab2: lab2, assignment: assignment,
      midSem: midSem, finalExam: finalExam,
    );

    print("Weighted Average: ${average.toStringAsFixed(2)}");
    print("Final Grade: ${calculateGrade(average.round())}");
  } on InvalidScoreException catch (e) {
    print("Error: $e");
  }
}