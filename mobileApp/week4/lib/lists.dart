// Part 3: Lists — common List operations

void main() {
  List<String> movies = ["Inception", "Black Panther", "The Matrix", "Interstellar", "Parasite"];

  print("Original list: $movies");
  print("Length: ${movies.length}");
  print("First: ${movies.first}");
  print("Last: ${movies.last}");

  movies.add("Oppenheimer");
  print("After add: $movies");

  movies.removeAt(0);
  print("After removeAt(0): $movies");

  movies.insert(2, "Dune");
  print("After insert(2, 'Dune'): $movies");

  bool hasMatrix = movies.contains("The Matrix");
  print("Contains 'The Matrix'? $hasMatrix");

  int index = movies.indexOf("Interstellar");
  print("Index of 'Interstellar': $index");

  movies.clear();
  print("After clear: $movies (length: ${movies.length})");
}