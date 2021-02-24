import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/pages/city_chooser_page/city_chooser_page.dart';
import 'package:weather_app/widgets/animated_logo.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void onAnimationFinished() {
    CityChooserPage.resetTo(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Center(
        child: AnimatedLogo(onAnimationFinished: onAnimationFinished),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
