import 'package:flutter/material.dart';
import 'package:weather_app/notifiers/cities_notifier.dart';
import 'package:weather_app/pages/home/home_page.dart';
import 'package:weather_app/utils/dependency_injection.dart';
import 'package:weather_app/widgets/city_chooser_body.dart';

class CityChooserPage extends StatelessWidget {
  static resetTo(BuildContext context) {
    Navigator.of(context).pushAndRemoveUntil(
      MaterialPageRoute(
        builder: (context) => CityChooserPage(),
      ),
      (Route<dynamic> route) => false,
    );
  }

  void _goToWeatherPage(BuildContext context, String cityName) async {
    await sl.get<CitiesNotifier>().addCityToList(cityName);
    HomePage.resetTo(context);
  }

  void _onCityPress(BuildContext context, String cityName) {
    sl.get<CitiesNotifier>().currentCityName = cityName;
    HomePage.resetTo(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: CityChooserBody(
            onCityPress: _onCityPress,
            onSubmit: _goToWeatherPage,
          ),
        ),
      ),
    );
  }
}
