import 'package:dio/dio.dart';
import 'package:dio_http_cache/dio_http_cache.dart';
import 'package:weather_app/models/forecast_weather/forecast_weather_response.dart';
import 'package:weather_app/models/weather/weather_response.dart';
import 'package:weather_app/repositories/api_client.dart';
import 'package:weather_app/repositories/api_consts.dart';
import 'package:weather_app/repositories/api_helper.dart';
import 'package:weather_app/repositories/app_interceptors.dart';

class ApiDio {
  Dio _dio;
  DioCacheManager _apiDioCacheManager;

  DioCacheManager get apiDioCacheManager => _apiDioCacheManager;

  ApiDio() {
    if (_dio == null) {
      _dio = Dio();
      _apiDioCacheManager = DioCacheManager(
        CacheConfig(
          baseUrl: ApiConsts.baseUrl,
        ),
      );
      _apiDioCacheManager.interceptor;
      _dio
        ..interceptors.add(_apiDioCacheManager.interceptor)
        ..interceptors.add(AppInterceptors());
    }
  }

  Future<WeatherResponse> getTodayWeather(String city,
      [String units = 'metric']) async {
    try {
      return await ApiClient(_dio).getTodayWeather(
        units,
        city,
        options: buildCacheOptions(
          Duration(seconds: 30),
          forceRefresh: true,
          subKey: 'locale=$city',
        ),
      );
    } catch (error) {
      throw ApiHelper.getApiError(error);
    }
  }

  Future<ForecastWeatherResponse> getTomorrowWeather(String city,
      [String units = 'metric']) async {
    try {
      return await ApiClient(_dio).getTomorrowWeather(
        units,
        city,
        options: buildCacheOptions(
          Duration(seconds: 30),
          forceRefresh: true,
          subKey: 'locale=$city',
        ),
      );
    } catch (error) {
      throw ApiHelper.getApiError(error);
    }
  }
}
