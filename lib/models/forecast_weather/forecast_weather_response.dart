import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/forecast_weather/city.dart';
import 'package:weather_app/models/forecast_weather/hour_weather.dart';

part 'forecast_weather_response.g.dart';

@JsonSerializable()
class ForecastWeatherResponse {
  String cod;
  int message;
  int cnt;
  @JsonKey(name: 'list')
  List<HourWeather> hourlyWeather;
  City city;

  ForecastWeatherResponse(
      {this.cod, this.message, this.cnt, this.hourlyWeather, this.city});

  factory ForecastWeatherResponse.fromJson(Map<String, dynamic> json) =>
      _$ForecastWeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastWeatherResponseToJson(this);
}
