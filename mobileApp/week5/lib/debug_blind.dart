// Part 14: Debug Blind — FIXED version

class Animal {
  String name;
  Animal(this.name);

  void speak() {
    print('$name makes a sound');
  }
}

class Dog extends Animal {
  // FIXED BUG 1: Added 'super(name)' so the parent class gets the name
  Dog(String name) : super(name); 

  @override
  void speak() {
    print('$name says Woof');
  }
}

abstract class Pet {
  void play();
}

class Cat extends Pet {
  String name;
  Cat(this.name);

  @override // FIXED BUG 2: Added @override annotation for clarity
  void play() {
    // FIXED BUG 3: Changed 'Sname' to '$name' (String interpolation)
    print('$name is playing'); 
  }
}

void main() {
  var dog = Dog('Rex');
  dog.speak();
  
  var cat = Cat('Whiskers');
  cat.play();
  
  // FIXED BUG 4: Added the required name argument 'Generic Animal'
  Animal a = Animal('Generic Animal'); 
  a.speak();
}