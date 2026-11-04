// Part 4: Inheritance
// Demonstrates abstract classes, extends, super, and method overriding.

// Notice the 'abstract' keyword before 'class Person'
abstract class Person {
  String name;
  int age;

  Person(this.name, this.age);

  // Because the class is abstract, this abstract method is allowed.
  String role();
  
  void introduce() {
    print("My name is $name and I am $age years old.");
  }
}

class Lecturer extends Person {
  String department;
  int yearsOfExperience; // Added custom field

  Lecturer(String name, int age, this.department, this.yearsOfExperience) 
      : super(name, age);

  @override
  String role() => "Lecturer";

  // Added custom method
  bool isSenior() => yearsOfExperience > 5;
}

class Student extends Person {
  String program;
  double gpa;
  String level; // Added custom field

  Student(String name, int age, this.program, this.gpa, this.level) 
      : super(name, age);

  @override
  String role() => "Student";

  bool isHonors() => gpa >= 3.5;
}

// Added third subclass
class Administrator extends Person {
  String office;

  Administrator(String name, int age, this.office) : super(name, age);

  @override
  String role() => "Administrator";
}

void main() {
  Lecturer lect = Lecturer("Dr. Kwame", 45, "Computer Science", 8);
  Student stud = Student("Ama Mensah", 22, "CS", 3.8, "300");
  Administrator admin = Administrator("Mr. Kobbina", 35, "Room 12");

  print("--- Introducing ---");
  lect.introduce();
  print("Role: ${lect.role()}");
  
  stud.introduce();
  print("Role: ${stud.role()}");
  print("Is Honors: ${stud.isHonors()}");
  
  admin.introduce();
  print("Role: ${admin.role()}");

  print("\n--- Custom Methods ---");
  print("Lecturer is Senior: ${lect.isSenior()}");
}