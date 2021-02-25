import 'package:get_it/get_it.dart';
import 'package:weather_app/database/weather_app_database.dart';
import 'package:weather_app/notifiers/busy_notifier.dart';
import 'package:weather_app/repositories/api_dio.dart';
import 'package:weather_app/utils/native_storage.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => BusyNotifier());
  sl.registerLazySingleton(() => NativeStorage());
  sl.registerLazySingleton(() => ApiDio());
  sl.registerSingletonAsync(() async => WeatherAppDatabase().init());
}
