import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/generated/l10n.dart';
import 'package:weather_app/notifiers/cities_notifier.dart';
import 'package:weather_app/pages/splash_page.dart';
import 'package:weather_app/utils/dependency_injection.dart' as di;
import 'package:weather_app/widgets/app_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  await di.sl.allReady();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CitiesNotifier>(
          create: (_) => CitiesNotifier(),
          lazy: true,
        ),
      ],
      child: MaterialApp(
        builder: (_, child) => Portal(
          child: AppContainer(child: child),
        ),
        color: AppColors.appColor,
        theme: ThemeData(
          unselectedWidgetColor: AppColors.blue,
          fontFamily: 'SourceSansPro',
          primarySwatch: AppColors.lightBlue,
          primaryColor: AppColors.white,
          buttonColor: AppColors.buttonColor,
          backgroundColor: AppColors.background,
          cursorColor: AppColors.violet,
          errorColor: AppColors.lipstick,
          scaffoldBackgroundColor: AppColors.white,
        ),
        localizationsDelegates: [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          // DefaultCupertinoLocalizations.delegate
        ],
        locale: Locale('pl'),
        supportedLocales: S.delegate.supportedLocales,
        home: SplashPage(),
      ),
    );
  }
}
