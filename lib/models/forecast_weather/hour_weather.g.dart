// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hour_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourWeather _$HourWeatherFromJson(Map<String, dynamic> json) {
  return HourWeather(
    dt: json['dt'] as int,
    main: json['main'] == null
        ? null
        : ForecastMain.fromJson(json['main'] as Map<String, dynamic>),
    weather: (json['weather'] as List)
        ?.map((e) =>
            e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    clouds: json['clouds'] == null
        ? null
        : Clouds.fromJson(json['clouds'] as Map<String, dynamic>),
    wind: json['wind'] == null
        ? null
        : Wind.fromJson(json['wind'] as Map<String, dynamic>),
    visibility: json['visibility'] as int,
    pop: (json['pop'] as num)?.toDouble(),
    sys: json['sys'] == null
        ? null
        : ForecastSys.fromJson(json['sys'] as Map<String, dynamic>),
    dtTxt: json['dtTxt'] as String,
    rain: json['rain'] == null
        ? null
        : Rain.fromJson(json['rain'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HourWeatherToJson(HourWeather instance) =>
    <String, dynamic>{
      'dt': instance.dt,
      'main': instance.main,
      'weather': instance.weather,
      'clouds': instance.clouds,
      'wind': instance.wind,
      'visibility': instance.visibility,
      'pop': instance.pop,
      'sys': instance.sys,
      'dtTxt': instance.dtTxt,
      'rain': instance.rain,
    };
