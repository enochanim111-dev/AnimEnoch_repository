// Part 5: Loops — for, while, do-while, for-in, nested

void main() {
  print("For loop 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print("Even numbers 2 to 20:");
  int j = 2;
  while (j <= 20) {
    print(j);
    j += 2;
  }

  print("Countdown 10 to 1:");
  int k = 10;
  do {
    print(k);
    k--;
  } while (k >= 1);

  print("Favorite foods:");
  List<String> foods = ["Jollof", "Banku", "Fufu", "Waakye", "Kelewele"];
  for (String food in foods) {
    print(food);
  }

  int sum = 0;
  for (int i = 1; i <= 100; i++) {
    sum += i;
  }
  print("Sum 1 to 100: $sum");

  print("Multiplication table 1 to 5:");
  for (int i = 1; i <= 5; i++) {
    for (int m = 1; m <= 5; m++) {
      print("$i x $m = ${i * m}");
    }
  }

  print("Squares 1 to 10:");
  for (int i = 1; i <= 10; i++) {
    print("$i squared = ${i * i}");
  }
}