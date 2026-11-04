// Part 2: Classes and Objects
// Demonstrates a basic class with fields, constructor, methods, getters, and toString.

class Student {
  String name;
  int age;
  String program;
  double gpa;
  List<String> courses; // Added custom field

  // Constructor with named parameters
  Student({
    required this.name,
    required this.age,
    required this.program,
    required this.gpa,
    this.courses = const [], // Default to empty list
  });

  // Method to print details
  void displayInfo() {
    print("Name: $name, Age: $age, Program: $program, GPA: $gpa");
    if (courses.isNotEmpty) {
      print("  Courses: $courses");
    }
  }

  // Method to check honors (changed threshold to 3.6)
  bool isHonors() {
    return gpa >= 3.6;
  }

  // Added custom method
  void addCourse(String course) {
    courses.add(course);
    print("$name enrolled in $course");
  }

  // Getter for age in months
  int get ageInMonths => age * 12;

  // Added custom getter for initials
  String get initials => name.split(' ').map((e) => e[0]).join();

  // Override toString
  @override
  String toString() {
    return "Student: $name";
  }
}

void main() {
  // Create three student objects
  Student s1 = Student(name: "Ama Mensah", age: 22, program: "CS", gpa: 3.8);
  Student s2 = Student(name: "Kofi Boateng", age: 20, program: "IT", gpa: 3.2);
  Student s3 = Student(name: "Yaw Darko", age: 21, program: "SE", gpa: 3.5);

  // Print details
  print("--- Student Details ---");
  s1.displayInfo();
  s2.displayInfo();
  s3.displayInfo();

  // Print honors status
  print("\n--- Honors Status ---");
  print("${s1.name} is Honors: ${s1.isHonors()}");
  print("${s2.name} is Honors: ${s2.isHonors()}");
  print("${s3.name} is Honors: ${s3.isHonors()}");

  // Print age in months
  print("\n--- Age in Months ---");
  print("${s1.name}: ${s1.ageInMonths} months");
  print("${s2.name}: ${s2.ageInMonths} months");
  print("${s3.name}: ${s3.ageInMonths} months");

  // Print toString
  print("\n--- toString() Overrides ---");
  print(s1.toString());
  print(s2.toString());
  print(s3.toString());

  // Use custom method and getter
  print("\n--- Customizations ---");
  s1.addCourse("Mobile App Dev");
  print("Ama's initials: ${s1.initials}");
  s1.displayInfo();
}