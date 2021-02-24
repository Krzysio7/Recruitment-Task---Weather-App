import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/config/app_colors.dart';
import 'package:weather_app/config/text_styles.dart';

class AppButton extends StatelessWidget {
  final double width;
  final String text;
  final Color color;
  final MainAxisAlignment mainAxisAlignment;
  final Function onPressed;
  final bool noShadow;

  const AppButton({
    Key key,
    this.text: '',
    this.mainAxisAlignment: MainAxisAlignment.center,
    this.width: double.infinity,
    this.color = AppColors.lightBlue,
    @required this.onPressed,
    this.noShadow = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 51,
      child: FlatButton(
        disabledColor: AppColors.greyish,
        disabledTextColor: AppColors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisAlignment: mainAxisAlignment,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  AutoSizeText(
                    text,
                    style: TextStyles.buttonText,
                    maxLines: 1,
                  ),
                ],
              ),
            ),
          ],
        ),
        color: color,
        highlightColor: AppColors.lipstick.withOpacity(0.05),
        onPressed: onPressed,
      ),
      decoration: BoxDecoration(
        boxShadow: noShadow || onPressed == null
            ? null
            : <BoxShadow>[
                BoxShadow(
                  color: AppColors.lipstick.withOpacity(0.29),
                  spreadRadius: 0,
                  blurRadius: 22,
                  offset: Offset(0, 4),
                ),
              ],
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
    );
  }
}
