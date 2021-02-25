// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastWeatherResponse _$ForecastWeatherResponseFromJson(
    Map<String, dynamic> json) {
  return ForecastWeatherResponse(
    cod: json['cod'] as String,
    message: json['message'] as int,
    cnt: json['cnt'] as int,
    hourlyWeather: (json['list'] as List)
        ?.map((e) =>
            e == null ? null : HourWeather.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    city: json['city'] == null
        ? null
        : City.fromJson(json['city'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ForecastWeatherResponseToJson(
        ForecastWeatherResponse instance) =>
    <String, dynamic>{
      'cod': instance.cod,
      'message': instance.message,
      'cnt': instance.cnt,
      'list': instance.hourlyWeather,
      'city': instance.city,
    };
