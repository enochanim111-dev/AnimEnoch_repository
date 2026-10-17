// Part 14: Debug Blind — FIXED version

void main() {
  int score = 75;
  String grade = calculateGrade(score);

  print('Score: $score');
  print('Grade: $grade');

  int bonus = add(10, 5);
  print('Bonus: $bonus');

  double average = calculateAverage([80, 90, 85]);
  print('Average: $average');
}

String calculateGrade(int score) {
  if (score >= 80) return 'A';
  if (score >= 70) return 'B';
  if (score >= 60) return 'C';
  if (score >= 50) return 'D';
  return 'F';
}

int add(int a, int b) {
  return a + b;
}

double calculateAverage(List<int> numbers) {
  int sum = 0;
  for (int i = 0; i < numbers.length; i++) {
    sum = sum + numbers[i];
  }
  return sum / numbers.length;
}