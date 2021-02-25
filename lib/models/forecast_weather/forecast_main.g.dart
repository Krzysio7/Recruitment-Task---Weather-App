// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastMain _$ForecastMainFromJson(Map<String, dynamic> json) {
  return ForecastMain(
    seaLevel: json['seaLevel'] as int,
    grndLevel: json['grndLevel'] as int,
    tempKf: (json['tempKf'] as num)?.toDouble(),
  )
    ..temp = (json['temp'] as num)?.toDouble()
    ..feelsLike = (json['feelsLike'] as num)?.toDouble()
    ..tempMin = (json['tempMin'] as num)?.toDouble()
    ..tempMax = (json['tempMax'] as num)?.toDouble()
    ..pressure = json['pressure'] as int
    ..humidity = json['humidity'] as int;
}

Map<String, dynamic> _$ForecastMainToJson(ForecastMain instance) =>
    <String, dynamic>{
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'tempMin': instance.tempMin,
      'tempMax': instance.tempMax,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'seaLevel': instance.seaLevel,
      'grndLevel': instance.grndLevel,
      'tempKf': instance.tempKf,
    };
