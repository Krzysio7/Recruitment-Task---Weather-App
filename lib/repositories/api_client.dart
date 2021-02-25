import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:weather_app/models/forecast_weather/forecast_weather_response.dart';
import 'package:weather_app/models/weather/weather_response.dart';
import 'package:weather_app/repositories/api_consts.dart';

part 'api_client.g.dart';

@RestApi(baseUrl: ApiConsts.baseUrl)
abstract class ApiClient {
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('weather')
  Future<WeatherResponse> getTodayWeather(
    @Query('units') String unit,
    @Query('q') String city, {
    @DioOptions() options,
  });

  @GET('forecast')
  Future<ForecastWeatherResponse> getTomorrowWeather(
    @Query('units') String unit,
    @Query('q') String city, {
    @DioOptions() options,
  });
}
