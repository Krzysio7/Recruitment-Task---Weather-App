import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:weather_app/config/assets.dart';
import 'package:weather_app/generated/l10n.dart';

class AnimatedLogo extends StatelessWidget {
  final Function onAnimationFinished;

  AnimatedLogo({this.onAnimationFinished});

  void _statusListener(AnimationStatus status) {
    if (status == AnimationStatus.completed) {
      onAnimationFinished();
    }
  }

  @override
  Widget build(BuildContext context) {
    return ZoomIn(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            Assets.weatherLogo,
            scale: 2,
          ),
          Text(S.current.appName),
        ],
      ),
      preferences: AnimationPreferences(
        duration: Duration(seconds: 2),
        animationStatusListener: (status) => _statusListener(status),
      ),
    );
  }
}
