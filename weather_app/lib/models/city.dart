class City {
  late String name;
  late double latitude;
  late double longitude;

  City({
    required this.name,
    required this.latitude,
    required this.longitude,
  });

  City.fromJson(List<dynamic> json) {
    var city = json.first;

    name = city['name'];
    latitude = city['lat'];
    longitude = city['lon'];
  }
}
