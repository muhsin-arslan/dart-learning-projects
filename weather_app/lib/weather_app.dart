import 'models/city.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'models/weather.dart';

Future<City?> getCoordinatesOfCity(String cityName) async {
  var requestUrl = Uri.https(
    'api.openweathermap.org',
    '/geo/1.0/direct',
    {
      'q': cityName,
      'limit': 1.toString(),
      'appid': '11d0809d1905ba8aa1d67b2204c425d0',
    },
  );

  var response = await http.get(requestUrl);

  if (response.statusCode == 200) {
    var data = convert.jsonDecode(response.body) as List<dynamic>;
    return City.fromJson(data);
  }

  print('Request failed: ${response.statusCode} - ${response.reasonPhrase}');

  return null;
}

Future<Weather?> getCurrentWeatherOfCity(City city) async {
  var requestUrl = Uri.https(
    'api.openweathermap.org',
    '/data/2.5/weather',
    {
      'lat': city.latitude.toString(),
      'lon': city.longitude.toString(),
      'units': 'metric',
      'appid': '11d0809d1905ba8aa1d67b2204c425d0',
    },
  );

  var response = await http.get(requestUrl);

  if (response.statusCode == 200) {
    var data = convert.jsonDecode(response.body) as Map<String, dynamic>;
    return Weather.fromJson(data);
  }

  print('Request failed: ${response.statusCode} - ${response.reasonPhrase}');

  return null;
}
