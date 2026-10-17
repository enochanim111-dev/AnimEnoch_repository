// This program demonstrates Dart variable declarations.
// Each declaration keyword is explained in comments.

void main() {
  // String: used for text values
  String name = "Anim enoch";
  
  // int: used for whole numbers
  int age = 22;
  
  // double: used for decimal numbers
  double height = 1.65;
  
  // bool: used for true/false values
  bool isStudent = true;
  
  // final: value set once, cannot be changed after
  final String dob = "15/03/2002";
  
  // const: compile-time constant, truly unchangeable
  const double pi = 3.14159;
  
  // String interpolation using $
  print(">> Name: $name");
  print(">> Age: $age");
  print(">> Height: $height");
  print(">> Student: $isStudent");
  print(">> DOB: $dob");
  print(">> Pi: $pi");
}