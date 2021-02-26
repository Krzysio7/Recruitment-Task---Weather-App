import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/models/forecast_weather/forecast_weather_response.dart';
import 'package:weather_app/notifiers/cities_notifier.dart';
import 'package:weather_app/pages/weather/weather_body.dart';
import 'package:weather_app/repositories/api_dio.dart';
import 'package:weather_app/repositories/api_helper.dart';
import 'package:weather_app/utils/dependency_injection.dart';
import 'package:weather_app/widgets/app_snackbar.dart';

class TomorrowWeatherTab extends StatefulWidget {
  @override
  _TomorrowWeatherTabState createState() => _TomorrowWeatherTabState();
}

class _TomorrowWeatherTabState extends State<TomorrowWeatherTab> {
  ForecastWeatherResponse _weather;
  bool _loading = true;

  void _setLoadingState() {
    setState(() {
      _loading = true;
    });
  }

  void _setLoadedState() {
    setState(() {
      _loading = false;
    });
  }

  Future<void> _fetchData() async {
    try {
      _setLoadingState();
      _weather = await sl
          .get<ApiDio>()
          .getTomorrowWeather(sl.get<CitiesNotifier>().currentCityName);
    } catch (error) {
      print(error);
      final _errorMessage = ApiHelper.getErrorMessage(error);
      final _snackBar = AppSnackBar.infinite(
        duration: Duration(seconds: 4),
        message: _errorMessage.message,
        context: context,
        action: _errorMessage.showReload ? () => _fetchData() : null,
      );
      Scaffold.of(context).hideCurrentSnackBar();
      Scaffold.of(context).showSnackBar(_snackBar);
    } finally {
      _setLoadedState();
    }
  }

  void _cityChangeListener() {
    _fetchData();
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      _fetchData();
    });
    sl.get<CitiesNotifier>().addListener(_cityChangeListener);
  }

  @override
  Widget build(BuildContext context) {
    return !_loading && _weather != null
        ? WeatherBody(
            cityName: _weather?.city?.name ?? '',
            temp: _weather?.hourlyWeather[0]?.main?.temp?.floor(),
            weatherDescription:
                _weather?.hourlyWeather[0]?.weather[0]?.description ?? '',
            humidity:
                _weather?.hourlyWeather[0]?.main?.humidity?.toString() ?? '',
            pressure:
                _weather?.hourlyWeather[0]?.main?.pressure?.toString() ?? '',
            windSpeed:
                _weather?.hourlyWeather[0]?.wind?.speed?.toString() ?? '',
            visibility:
                _weather?.hourlyWeather[0]?.visibility?.toString() ?? '',
          )
        : const SpinKitWave(color: AppColors.blue, size: 50);
  }

  @override
  void dispose() {
    sl.get<CitiesNotifier>().removeListener(_cityChangeListener);
    super.dispose();
  }
}
