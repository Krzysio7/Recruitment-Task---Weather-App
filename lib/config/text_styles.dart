import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';

abstract class TextStyles {
  static const labelText = TextStyle(
    fontSize: 16,
    color: AppColors.lightBlue,
  );

  static const hintTextStyle = TextStyle(
    color: AppColors.greyish,
    fontSize: 16,
  );

  static const buttonText = TextStyle(
    fontSize: 16,
    height: 20 / 16,
    color: AppColors.white,
  );
}
