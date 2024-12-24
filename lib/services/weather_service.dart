import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
 final Dio dio;
 String baseUrl = 'http://api.weatherapi.com/v1';
 String apiKey = 'f3dceca976e542dda2f191747241912';

 WeatherService(this.dio);

  Future<WeatherModel?> getCurrentWeather({required String cityName}) async {
 try {
   Response response=  await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1');
   response.statusCode;
   WeatherModel weatherModel=WeatherModel.fromJson(response.data);
   return weatherModel;

 } on DioException catch (e) {
   final String errMessage= e.response?.data['error']['message']??
       'Opps there was an error ,try latter';
   throw  Exception(errMessage);
  }
  catch(e)
    {
      log(e.toString());
      throw Exception("Opps there was an error ,try latter");
      
    }

  }
}