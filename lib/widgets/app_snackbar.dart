import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/config/text_styles.dart';
import 'package:weather_app/generated/l10n.dart';

class AppSnackBar extends SnackBar {
  final Duration duration;
  final String message;
  final Color backgroundColor;
  final String actionName;
  final BuildContext context;
  final Function onPressed;

  AppSnackBar({
    Key key,
    @required this.message,
    this.backgroundColor = AppColors.violet,
    this.context,
    this.actionName,
    this.onPressed,
    this.duration = const Duration(seconds: 4),
  }) : super(
          key: key,
          duration: duration,
          backgroundColor: backgroundColor,
          content: Text(
            message,
            style: TextStyles.snackBarMessage,
          ),
          action: onPressed != null
              ? SnackBarAction(
                  label: actionName != null ? actionName : S.current.refresh,
                  onPressed: () {
                    onPressed();
                  },
                  textColor: AppColors.white,
                )
              : null,
        );

  factory AppSnackBar.error(
          {@required String message,
          Duration duration = const Duration(seconds: 4),
          BuildContext context,
          String actionName,
          Function action}) =>
      AppSnackBar(
        message: message,
        backgroundColor: AppColors.lipstick,
        duration: action != null ? const Duration(days: 365) : duration,
        actionName: actionName,
        context: context,
        onPressed: action,
      );

  factory AppSnackBar.infinite(
          {@required String message,
          Duration duration = const Duration(days: 365),
          BuildContext context,
          String actionName,
          Color backgroundColor,
          Function action}) =>
      AppSnackBar(
        message: message,
        backgroundColor: backgroundColor,
        duration: action != null ? const Duration(days: 365) : duration,
        actionName: actionName,
        context: context,
        onPressed: action,
      );
}
