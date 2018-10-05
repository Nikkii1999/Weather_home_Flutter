import 'package:flutter/material.dart';
import 'package:weather_app/weather_app.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
        title: "weather app",
        home: WeatherHome(

        ),
    );
  }
}