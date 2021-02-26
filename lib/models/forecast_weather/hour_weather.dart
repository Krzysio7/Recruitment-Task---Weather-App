import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/forecast_weather/forecast_main.dart';
import 'package:weather_app/models/forecast_weather/forecast_sys.dart';
import 'package:weather_app/models/forecast_weather/rain.dart';
import 'package:weather_app/models/weather/clouds.dart';
import 'package:weather_app/models/weather/weather.dart';
import 'package:weather_app/models/weather/wind.dart';

part 'hour_weather.g.dart';

@JsonSerializable()
class HourWeather {
  int dt;
  ForecastMain main;
  List<Weather> weather;
  Clouds clouds;
  Wind wind;
  int visibility;
  double pop;
  ForecastSys sys;
  String dtTxt;
  Rain rain;

  HourWeather(
      {this.dt,
      this.main,
      this.weather,
      this.clouds,
      this.wind,
      this.visibility,
      this.pop,
      this.sys,
      this.dtTxt,
      this.rain});

  factory HourWeather.fromJson(Map<String, dynamic> json) =>
      _$HourWeatherFromJson(json);

  Map<String, dynamic> toJson() => _$HourWeatherToJson(this);
}
