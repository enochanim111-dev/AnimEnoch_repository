// Part 7: Sets — common Set operations

void main() {
  List<int> numbersList = [1, 2, 2, 3, 3, 3, 4, 4, 4, 4];
  Set<int> numbersSet = numbersList.toSet();

  print("Original list: $numbersList");
  print("After conversion to Set: $numbersSet");

  Set<String> subjects = {"Math", "English", "Biology", "Chemistry", "Physics"};

  subjects.add("Computer Science");
  print("After add: $subjects");

  subjects.add("Math");
  print("After adding duplicate 'Math': $subjects (still same size)");

  print("Contains 'English'? ${subjects.contains("English")}");

  subjects.remove("Chemistry");
  print("After remove: $subjects");

  Set<String> otherSubjects = {"Art", "Music", "Math"};
  Set<String> allSubjects = subjects.union(otherSubjects);
  print("Union: $allSubjects");

  Set<String> commonSubjects = subjects.intersection(otherSubjects);
  print("Intersection: $commonSubjects");

  Set<String> uniqueSubjects = subjects.difference(otherSubjects);
  print("Difference (subjects only): $uniqueSubjects");
}