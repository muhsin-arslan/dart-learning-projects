import 'dart:io';
import 'package:weather_app/weather_app.dart';

Future<void> main(List<String> args) async {
  print('Enter your city name.');

  var cityName = stdin.readLineSync();

  if (cityName != null && cityName.isNotEmpty) {
    var city = await getCoordinatesOfCity(cityName);
    if (city == null) {
      print('City was not found.');
      exit(1);
    }

    var weather = await getCurrentWeatherOfCity(city);
    if (weather == null) {
      print('Current weather of $cityName not found.');
      exit(1);
    }

    print('Current Weather Status of ${city.name}');
    print('Temp: ${weather.temp}');
    print('Feels Like: ${weather.feelsLike}');
    print('Wind: ${weather.wind}km/h');

    exit(0);
  }

  print('City name was invalid.');
  exit(1);
}
