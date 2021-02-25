import 'package:json_annotation/json_annotation.dart';

part 'forecast_sys.g.dart';

@JsonSerializable()
class ForecastSys {
  String pod;

  ForecastSys({this.pod});

  factory ForecastSys.fromJson(Map<String, dynamic> json) =>
      _$ForecastSysFromJson(json);

  Map<String, dynamic> toJson() => _$ForecastSysToJson(this);
}
