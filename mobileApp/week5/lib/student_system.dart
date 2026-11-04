// Part 13: Student Management System Challenge

abstract class Person {
  String name;
  int id;
  Person(this.name, this.id);
  String getRole();
}

mixin Evaluable {
  void submitAssignment() => print("$runtimeType submitted an assignment.");
  void takeExam() => print("$runtimeType is taking an exam.");
}

class Course {
  String code;
  String title;
  int credits;

  Course.create({required this.code, required this.title, required this.credits}) {
    if (credits < 0) throw ArgumentError("Credits cannot be negative");
  }
}

class Student extends Person with Evaluable {
  String program;
  double gpa;
  List<Course> courses = [];

  Student(String name, int id, this.program, this.gpa) : super(name, id);

  @override
  String getRole() => "Student";

  void enrollIn(Course c) {
    // Check for duplicates (Break It #1)
    if (courses.contains(c)) {
      print("Already enrolled in ${c.code}");
      return;
    }
    courses.add(c);
    print("$name enrolled in ${c.code}");
  }

  int getTotalCredits() {
    return courses.fold(0, (sum, course) => sum + course.credits);
  }
}

class Lecturer extends Person {
  String department;
  List<Course> teaches = [];

  Lecturer(String name, int id, this.department) : super(name, id);

  @override
  String getRole() => "Lecturer";

  void assignCourse(Course c) {
    teaches.add(c);
    print("$name assigned to teach ${c.code}");
  }
}

void main() {
  // Create objects
  Student s1 = Student("Ama", 101, "CS", 3.8);
  Lecturer l1 = Lecturer("Dr. Kwame", 201, "Computer Science");
  
  Course c1 = Course.create(code: "INFT 425", title: "Mobile App Dev", credits: 3);
  Course c2 = Course.create(code: "INFT 301", title: "Data Structures", credits: 4);

  print("--- Testing System ---");
  s1.enrollIn(c1);
  s1.enrollIn(c1); // Should not duplicate
  s1.enrollIn(c2);
  
  l1.assignCourse(c1);

  print("\n--- Roles ---");
  print("${s1.name} is a ${s1.getRole()}");
  print("${l1.name} is a ${l1.getRole()}");

  print("\n--- Credits ---");
  print("${s1.name} has ${s1.getTotalCredits()} total credits.");

  print("\n--- Mixin Methods ---");
  s1.submitAssignment();
  s1.takeExam();
}