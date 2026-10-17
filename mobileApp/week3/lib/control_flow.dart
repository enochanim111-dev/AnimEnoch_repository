// Part 3: Control Flow — if/else and switch expressions

void main() {
  int score = 85;

  String grade;
  if (score < 0 || score > 100) {
    grade = "Invalid score";
  } else if (score >= 85) {
    grade = "A";
  } else if (score >= 75) {
    grade = "B";
  } else if (score >= 65) {
    grade = "C";
  } else if (score >= 55) {
    grade = "D";
  } else {
    grade = "F";
  }

  print("Score: $score, Grade: $grade");

  String grade2 = switch (score) {
    < 0 || > 100 => "Invalid score",
    >= 85 => "A",
    >= 75 => "B",
    >= 65 => "C",
    >= 55 => "D",
    _ => "F",
  };

  print("Switch result: $grade2");
  print("Match? ${grade == grade2}");
}