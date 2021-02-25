import 'package:flutter/material.dart';

class TomorrowWeatherTab extends StatelessWidget {
  final String passedCity;

  TomorrowWeatherTab({this.passedCity});

  @override
  Widget build(BuildContext context) {
    return Text(passedCity);
  }
}
