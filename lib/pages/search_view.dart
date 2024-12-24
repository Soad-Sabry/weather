import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class SearchView extends StatelessWidget{
  const SearchView({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search City"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16 ),
        child: Center(
          child: TextField(
            onSubmitted: (value) async{
           // WeatherModel? weatherModel= await WeatherService(Dio())
           //     .getCurrentWeather(cityName: value);
            Navigator.pop(context);
           log(weatherModel!.cityName);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 32,
              ),
              labelText: "Search",
              suffixIcon:Icon(Icons.search) ,
              hintText: "Enter city name",
              border: OutlineInputBorder(
                borderSide:BorderSide(color: Colors.green),
                borderRadius: BorderRadius.circular(16)

              ),
                enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),

                      borderSide:BorderSide(color: Colors.green),
            ),
               // focusedBorder: OutlineInputBorder(),
            ),

          ),
        ),
      ),
    );
    }

}
WeatherModel ?weatherModel;

