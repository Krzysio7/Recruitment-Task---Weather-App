import 'package:get_it/get_it.dart';
import 'package:weather_app/notifiers/busy_notifier.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(() => BusyNotifier());
}
