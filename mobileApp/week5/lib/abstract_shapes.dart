// Part 6: Abstract Classes and Interfaces
// Demonstrates the difference between extends and implements.

import 'dart:math';

abstract class Shape {
  double area();
  double perimeter();
  
  void describe() {
    print("I am a $runtimeType with area ${area().toStringAsFixed(2)} and perimeter ${perimeter().toStringAsFixed(2)}");
  }

  // Added custom getter
  String get unit => "cm²"; 
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() => pi * radius * radius;

  @override
  double perimeter() => 2 * pi * radius;

  @override
  void describe() {
    print("I am a Circle with radius $radius. Area: ${area().toStringAsFixed(2)} $unit");
  }

  @override
  String get unit => "cm²";
}

class Rectangle implements Shape {
  double width, height;
  Rectangle(this.width, this.height);

  @override
  double area() => width * height;

  @override
  double perimeter() => 2 * (width + height);

  @override
  void describe() {
    print("I am a Rectangle with width $width and height $height. Area: ${area().toStringAsFixed(2)} $unit");
  }

  @override
  String get unit => "cm²";
}

class Triangle implements Shape {
  double base, height, sideA, sideB;
  Triangle(this.base, this.height, this.sideA, this.sideB);

  @override
  double area() => 0.5 * base * height;

  @override
  double perimeter() => base + sideA + sideB;

  @override
  void describe() {
    print("I am a Triangle. Area: ${area().toStringAsFixed(2)} $unit");
  }

  @override
  String get unit => "cm²";
}

// Added Square class extending Rectangle
class Square extends Rectangle {
  Square(double side) : super(side, side);
}

void main() {
  Circle c = Circle(5);
  Rectangle r = Rectangle(4, 6);
  Triangle t = Triangle(3, 4, 5, 5);
  Square s = Square(3);

  print("--- Shapes ---");
  c.describe();
  r.describe();
  t.describe();
  s.describe();
}