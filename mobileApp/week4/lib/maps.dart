// Part 5: Maps — common Map operations

void main() {
  Map<String, int> movieYears = {
    "Inception": 2010,
    "Black Panther": 2018,
    "The Matrix": 1999,
    "Interstellar": 2014,
    "Parasite": 2019,
  };

  print("Original map: $movieYears");
  print("Keys: ${movieYears.keys}");
  print("Values: ${movieYears.values}");

  movieYears["Oppenheimer"] = 2023;
  print("After add: $movieYears");

  movieYears.remove("The Matrix");
  print("After remove: $movieYears");

  bool hasInception = movieYears.containsKey("Inception");
  print("Contains key 'Inception'? $hasInception");

  bool has2020 = movieYears.containsValue(2020);
  print("Contains value 2020? $has2020");

  movieYears["Interstellar"] = 2015;
  print("After update: $movieYears");

  print("All movies:");
  movieYears.forEach((title, year) {
    print("$title ($year)");
  });

  print("Length: ${movieYears.length}");
}