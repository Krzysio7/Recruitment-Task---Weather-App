import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/weather/clouds.dart';
import 'package:weather_app/models/weather/coord.dart';
import 'package:weather_app/models/weather/main.dart';
import 'package:weather_app/models/weather/sys.dart';
import 'package:weather_app/models/weather/weather.dart';
import 'package:weather_app/models/weather/wind.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  Coord coord;
  List<Weather> weather;
  String base;
  Main main;
  int visibility;
  Wind wind;
  Clouds clouds;
  int dt;
  Sys sys;
  int timezone;
  int id;
  String name;
  int cod;

  WeatherResponse(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  factory WeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}
