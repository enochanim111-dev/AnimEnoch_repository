// Part 10: Mixins
// Demonstrates reusable blocks of code using 'with'.

mixin Flyable {
  int wingspan = 0; // Added custom field
  
  void fly() => print("$runtimeType is Flying...");
  void land() => print("$runtimeType is Landing...");
  bool get canFly => true;
}

mixin Swimmable {
  void swim() => print("$runtimeType is Swimming...");
  void dive() => print("$runtimeType is Diving...");
}

// Added custom mixin
mixin Walkable {
  void walk() => print("$runtimeType is Walking...");
}

class Animal {
  String name;
  Animal(this.name);
  void eat() => print("$name is eating.");
}

class Duck extends Animal with Flyable, Swimmable, Walkable {
  Duck(String name) : super(name);
}

class Fish extends Animal with Swimmable {
  Fish(String name) : super(name);
}

class Eagle extends Animal with Flyable {
  Eagle(String name) : super(name);
}

// Added custom class
class Penguin extends Animal with Swimmable, Walkable {
  Penguin(String name) : super(name);
}

void main() {
  Duck d = Duck("Donald");
  Fish f = Fish("Nemo");
  Eagle e = Eagle("Sam");
  Penguin p = Penguin("Pingu");

  print("--- Duck ---");
  d.eat();
  d.fly();
  d.swim();
  d.walk();

  print("\n--- Fish ---");
  f.eat();
  f.swim();

  print("\n--- Eagle ---");
  e.eat();
  e.fly();
  
  print("\n--- Penguin ---");
  p.eat();
  p.swim();
  p.walk();
}