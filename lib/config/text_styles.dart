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

  static const description = TextStyle(
    color: AppColors.black,
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const cityNameHeader = TextStyle(
    color: AppColors.black,
    fontSize: 40,
  );

  static const temperatureHeader = TextStyle(
    color: AppColors.black,
    fontSize: 60,
  );

  static const buttonText = TextStyle(
    fontSize: 16,
    height: 20 / 16,
    color: AppColors.white,
  );

  static const snackBarMessage = TextStyle(
    fontSize: 15,
    color: AppColors.white,
  );
}
