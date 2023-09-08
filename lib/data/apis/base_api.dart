import 'package:dio/dio.dart';
import 'package:weather_app_flutter/data/models/current_weather_model.dart';

// class BaseApi {
//   Dio _dio = Dio();

//   Future<CurrentWeatherModel> currentWeatherApi() async {
//     var cityName = "Mumbai";
//     var response = await _dio.get(
//         'https://api.weatherapi.com/v1/current.json?key=71e4c53ddc324f8da31143517232208&q=$cityName');
//     print(response.data);
//     // return CurrentWeatherModel.fromJson(response.data);
//     return response.data;
//   }
// }

class BaseApi {
  Dio _dio = Dio();

  Future<currentWeatherModel> currentWeatherApi() async {
    var cityName = "Mumbai";
    var response = await _dio.get(
        'https://api.weatherapi.com/v1/current.json?key=71e4c53ddc324f8da31143517232208&q=$cityName');
    print(response.data);
    return currentWeatherModel.fromJson(response.data); // Uncomment this line
  }
}


// import 'package:dio/dio.dart';
// import 'package:weather_app_flutter/data/models/current_weather_model.dart';

// class BaseApi {
//   final Dio _dio = Dio();

//   Future<currentWeatherModel> currentWeatherApi() async {
//     var cityName = "Mumbai";
//     try {
//       var response = await _dio.get(
//           'https://api.weatherapi.com/v1/current.json?key=71e4c53ddc324f8da31143517232208&q=$cityName');

//       if (response.statusCode == 200) {
//         // Parse the JSON response into a CurrentWeatherModel object
//         return currentWeatherModel.fromJson(response.data);
//       } else {
//         throw Exception('Failed to load current weather data');
//       }
//     } catch (e) {
//       throw Exception('Failed to load current weather data: $e');
//     }
//   }
// }
