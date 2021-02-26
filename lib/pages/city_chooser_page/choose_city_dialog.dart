import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/notifiers/cities_notifier.dart';
import 'package:weather_app/utils/dependency_injection.dart';
import 'package:weather_app/widgets/city_chooser_body.dart';

class ChooseCityDialog extends StatelessWidget {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => ChooseCityDialog(),
    );
  }

  void _onCityPress(BuildContext context, String cityName) {
    sl.get<CitiesNotifier>().currentCityName = cityName;
    Navigator.of(context).pop();
  }

  void _onCitySubmit(BuildContext context, String cityName) async {
    await sl.get<CitiesNotifier>().addCityToList(cityName);
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: RawMaterialButton(
                child: Icon(Icons.close),
                onPressed: () => Navigator.of(context).pop(),
                shape: const CircleBorder(),
              ),
            ),
            Container(height: 1, color: AppColors.divider),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: CityChooserBody(
                  onCityPress: _onCityPress,
                  onSubmit: _onCitySubmit,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
