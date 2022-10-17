double calculateAvarageOfRatings(List<double> ratings) {
  var ratingTotal = 0.0;
  var amountOfRating = ratings.length;

  for (var rating in ratings) {
    ratingTotal += rating;
  }

  return ratingTotal / amountOfRating;
}
