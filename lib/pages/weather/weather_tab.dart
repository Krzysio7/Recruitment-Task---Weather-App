import 'package:flutter/material.dart';

class TodayWeatherTab extends StatelessWidget {
  final String passedCity;

  TodayWeatherTab({this.passedCity});

  @override
  Widget build(BuildContext context) {
    return Text(passedCity);
  }
}
