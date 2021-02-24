import 'package:weather_app/generated/l10n.dart';

abstract class Validators {
  static String cityValidator(String city) {
    if (city.trim().isEmpty) {
      return S.current.cityNameRequired;
    }

    final cityRegexp = RegExp(r"^[a-zA-Z]+$");

    if (!cityRegexp.hasMatch(city.trim())) {
      return S.current.enterValidCity;
    }
    return null;
  }
}
