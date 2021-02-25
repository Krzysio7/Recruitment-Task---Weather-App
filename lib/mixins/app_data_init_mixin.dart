import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/notifiers/cities_notifier.dart';

mixin AppDataInitMixin {
  Future<void> _initRemindedCitiesList(BuildContext context) async {
    try {
      await context.read<CitiesNotifier>().initFromDB();
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
