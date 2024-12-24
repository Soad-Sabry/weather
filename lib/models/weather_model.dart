class WeatherModel{
  final String cityName;
  final String date;
  final String? image;
  final double temp;
  final double maxtemp;
  final double mintemp;
  final String weatherCondition;

  WeatherModel({required this.cityName, required this.date, this.image,required this.temp,required this.maxtemp,
    required  this.mintemp, required this.weatherCondition});
  
   factory WeatherModel.fromJson(json){
     return WeatherModel(
       image: json['forecast']['forecastday'][0]['day']['condition']['icon'] ,
       cityName: json['location']['name'],
         date: json['current']['last_updated'],
         temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
         maxtemp:  json['forecast']['forecastday'][0]['day']['maxtemp_c'],
         mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
         weatherCondition:  json['forecast']['forecastday'][0]['day']['condition']['text']
       ,);


   }
}