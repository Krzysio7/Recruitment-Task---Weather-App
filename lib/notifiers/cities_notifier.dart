import 'package:flutter/material.dart';
import 'package:weather_app/database/cities_table.dart';
import 'package:weather_app/database/models/city.dart';

class CitiesNotifier with ChangeNotifier {
  List<City> _citiesList = [];

  List<City> get citiesList => _citiesList;

  Future<void> initFromDB() async {
    List<City> cities = await CitiesTable.getAll();
    _initCities(cities);
  }

  void _initCities(List<City> cities) {
    if (cities != null && cities.length > 0) {
      _citiesList = cities;
    }
  }
}
