// Part 7: Functions — various signatures with doc comments

String greet(String name) {
  return "Hello, $name!";
}

int add(int a, int b) {
  return a + b;
}

bool isEven(int n) {
  return n % 2 == 0;
}

double calculateAverage(List<int> numbers) {
  if (numbers.isEmpty) return 0;
  int sum = numbers.reduce((a, b) => a + b);
  return sum / numbers.length;
}

void printDetails({
  required String name,
  required int age,
  String? city,
}) {
  print("Name: $name, Age: $age${city != null ? ', City: $city' : ''}");
}

int maxOfThree(int a, int b, int c) {
  return [a, b, c].reduce((x, y) => x > y ? x : y);
}

String reverseString(String s) {
  return s.split('').reversed.join();
}

int countVowels(String s) {
  int count = 0;
  for (String ch in s.toLowerCase().split('')) {
    if ('aeiou'.contains(ch)) count++;
  }
  return count;
}

int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

void main() {
  print(greet("Ama"));
  print(add(5, 3));
  print(isEven(7));
  print(calculateAverage([10, 20, 30]));
  printDetails(name: "Ama", age: 22, city: "Accra");
  print(maxOfThree(5, 12, 8));
  print(reverseString("hello"));
  print(countVowels("Ama Mensah"));
  print(factorial(5));
}