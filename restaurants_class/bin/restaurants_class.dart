class Restaurant {
  Restaurant({
    required this.name,
    required this.cuisine,
    required this.ratings,
  });

  final String name;
  final String cuisine;
  final List<double> ratings;

  double get average =>
      (ratings.reduce((value, element) => value + element)) / ratings.length;
}

void main(List<String> arguments) {
  var restaurantOne = Restaurant(
    name: 'Peppori Pizza',
    cuisine: 'Italy',
    ratings: [4.5, 5.0, 3.9, 4.7, 3.9],
  );

  var restaurantTwo = Restaurant(
    name: 'Hatashi Sushi',
    cuisine: 'Japanese',
    ratings: [5.0, 5.0, 4.2, 4.7, 4.9],
  );

  var restaurantThree = Restaurant(
    name: 'Donerci Usta',
    cuisine: 'Turkey',
    ratings: [5.0, 5.0, 4.9, 4.7, 4.3],
  );

  print(
      '${restaurantOne.name} : ${restaurantOne.average.toStringAsFixed(2)} (average score)');

  print(
      '${restaurantTwo.name} : ${restaurantTwo.average.toStringAsFixed(2)} (average score)');

  print(
      '${restaurantThree.name} : ${restaurantThree.average.toStringAsFixed(2)} (average score)');
}
