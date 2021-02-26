import 'dart:async';

import 'package:flutter/material.dart';
import 'package:weather_app/database/cities_table.dart';
import 'package:weather_app/database/models/city.dart';

class CitiesNotifier with ChangeNotifier {
  List<City> _citiesList = [];
  String _currentCityName;

  String get currentCityName => _currentCityName;

  set currentCityName(String value) {
    print(value);
    _currentCityName = value;
    notifyListeners();
  }

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

  FutureOr<void> addCityToList(String cityName) async {
    if (_citiesList.any((element) {
      return element.name == cityName;
    })) {
      return;
    }
    _citiesList.add(City(name: cityName));
    await CitiesTable.insertAll(_citiesList, deleteBefore: true);
    currentCityName = cityName;
  }
}
