import 'package:restaurant_ratings/restaurant_ratings.dart';

void main(List<String> arguments) {
  var restaurants = [
    {
      'name': 'pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.0, 3.5, 4.5]
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [5.0, 4.5, 4.0]
    },
    {
      'name': 'Hot Kebab',
      'cuisine': 'Turkish',
      'ratings': [5.0, 4.5, 5.0]
    },
  ];

  for (var restaurant in restaurants) {
    final avarageRatingOfRestaurant =
        calculateAvarageOfRatings(restaurant['ratings'] as List<double>);

    restaurant['avarageRating'] = avarageRatingOfRestaurant;

    final avarageRating = restaurant['avarageRating'] as double;

    print('Avarage rating is ${avarageRating.toStringAsFixed(2)} of ${restaurant['name']}');
  }
  
}
