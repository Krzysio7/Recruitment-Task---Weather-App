import 'package:weather_app/models/weather/main.dart';
import 'package:json_annotation/json_annotation.dart';

part 'forecast_main.g.dart';

@JsonSerializable()
class ForecastMain extends Main {
  int seaLevel;
  int grndLevel;
  double tempKf;

  ForecastMain({this.seaLevel, this.grndLevel, this.tempKf});

  factory ForecastMain.fromJson(Map<String, dynamic> json) =>
      _$ForecastMainFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastMainToJson(this);
}
