import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/mixins/app_data_init_mixin.dart';
import 'package:weather_app/pages/city_chooser_page/city_chooser_page.dart';
import 'package:weather_app/widgets/animated_logo.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with AppDataInitMixin {
  final ValueNotifier<bool> _animationFinished = ValueNotifier(false);

  void onAnimationFinished() {
    CityChooserPage.resetTo(context);
  }

  void _navigateToHomePageWhenAnimStops() {
    if (_animationFinished.value) {
      _navigateToCityChooserPage();
    } else {
      _animationFinished.addListener(_navigateToCityChooserPage);
    }
  }

  void _navigateToCityChooserPage() {
    CityChooserPage.resetTo(context);
  }

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    await initAppData(context);
    _navigateToHomePageWhenAnimStops();
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
    _animationFinished.removeListener(_navigateToCityChooserPage);
    super.dispose();
  }
}
