import 'package:flutter/material.dart';
import 'package:weather_app/notifiers/cities_notifier.dart';
import 'package:weather_app/utils/dependency_injection.dart';

mixin AppDataInitMixin {
  Future<void> _initRemindedCitiesList(BuildContext context) async {
    try {
      await sl.get<CitiesNotifier>().initFromDB();
    } catch (error) {
      print(error);
    }
  }

  Future<void> initAppData(BuildContext context) async {
    await Future.wait([
      _initRemindedCitiesList(context),
    ]);
  }
}
