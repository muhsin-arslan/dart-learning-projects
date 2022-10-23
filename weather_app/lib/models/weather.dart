class Weather {
  late double temp;
  late double feelsLike;
  late double wind;

  Weather({
    required this.temp,
    required this.feelsLike,
    required this.wind,
  });

  Weather.fromJson(Map<String, dynamic> json) {
    temp = json['main']['temp'] as double;
    feelsLike = json['main']['feels_like'] as double;
    wind = json['wind']['speed'] as double;
  }
}
